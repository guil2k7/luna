// Copyright 2024 Maicol Castro (maicolcastro.abc@gmail.com).

#pragma once

#include "../game/quaternion.hh"
#include "../game/vector.hh"
#include "../net/packet.hh"
#include "../serde/serde.hh"
#include <string>
#include <cstdint>

namespace luna::netcode {

enum ServerQuitReason : uint8_t {
    SERVER_QUIT_REASON_TIMEOUT,
    SERVER_QUIT_REASON_QUIT,
    SERVER_QUIT_REASON_KICK_OR_BAN,
};

struct StatsUpdate final : public net::Packet {
    LUNA_DEFINE_PACKET(false, 205);

    inline net::Packet* create() const override {
        return new StatsUpdate();        
    }

    void serialise(serde::ISerialiser& serialiser) const override;

    int32_t money;
    int32_t drunkLevel;
};

struct FootSync final : public net::Packet {
    LUNA_DEFINE_PACKET(false, 207);

    inline net::Packet* create() const override {
        return new FootSync();        
    }

    void serialise(serde::ISerialiser& serialiser) const override;
    void deserialise(serde::IDeserialiser& deserialiser) override;

    uint16_t playerID;
    uint16_t leftRight;
    uint16_t upDown;
    uint16_t keys;

    union {
        uint8_t weaponAdditionalKey;
        struct {
            uint8_t weapon : 6;
            uint8_t additionalKey : 2;
        };
    };

    uint8_t specialAction;
    game::Vector position;
    game::Quaternion rotation;
    float health;
    float armour;
    game::Vector velocity;
    uint16_t animationID;
    uint16_t animationFlags;
    uint16_t surfingID;
    game::Vector surfingOffset;
};

struct SetPlayerFacingAngle final : public net::Packet {
    LUNA_DEFINE_PACKET(true, 19);

    inline net::Packet* create() const override {
        return new SetPlayerFacingAngle();        
    }

    void deserialise(serde::IDeserialiser& deserialiser) override;

    float angle;
};

struct ServerJoin final : public net::Packet {
    LUNA_DEFINE_PACKET(true, 137);

    inline net::Packet* create() const override {
        return new ServerJoin();        
    }

    void deserialise(serde::IDeserialiser& deserialiser) override;

    uint16_t playerID;
    uint32_t color;
    uint8_t isNpc;
    std::string playerName;

    // Additional Information: Keeping color parameter as 0 will make random color on each client.
};

struct ServerQuit final : public net::Packet {
    LUNA_DEFINE_PACKET(true, 138);

    inline net::Packet* create() const override {
        return new ServerQuit();        
    }

    void deserialise(serde::IDeserialiser& deserialiser) override;

    uint16_t playerID;
    ServerQuitReason reason;
};

class InitGame final : public net::Packet {
public:
    LUNA_DEFINE_PACKET(true, 139);

    inline net::Packet* create() const override {
        return new InitGame();        
    }

    void deserialise(serde::IDeserialiser& deserialiser) override;
    bool execute(net::Client& client) override;

    bool zoneNames;
    bool useCjWalk;
    bool allowWeapons;
    bool limitGlobalChatRadius;
    float globalChatRadius;
    bool stuntBonus;
    float nameTagDistance;
    bool disableEnterExits;
    bool nameTagLos;
    bool manualVehEngineAndLights;
    uint32_t spawnsAvailable;
    uint16_t playerID;
    bool showNameTags;
    uint32_t showPlayerMarkers;
    uint8_t worldTime;
    uint8_t weather;
    float gravity;
    bool lanMode;
    uint32_t deathDropMoney;
    bool instagib;
    uint32_t onfootRate;
    uint32_t inCarRate;
    uint32_t weaponRate;
    uint32_t multiplier;
    uint32_t lagCompMode;
    std::string hostName;
    uint32_t vehicleFriendlyFire;
    // uint8_t vehicleModels[212];

private:
    void handleClassSelection(net::Client& client);
};

struct UpdateScoresAndPings final : public net::Packet {
    LUNA_DEFINE_PACKET(true, 155);

    inline net::Packet* create() const override {
        return new UpdateScoresAndPings();        
    }

    void deserialise(serde::IDeserialiser& deserialiser) override;

    uint16_t playerID;
    int32_t score;
    uint32_t ping;
};

struct ClientCheck final : public net::Packet {
    LUNA_DEFINE_PACKET(true, 103);

    inline net::Packet* create() const override {
        return new ClientCheck();        
    }

    void deserialise(serde::IDeserialiser& deserialiser) override;

    uint8_t type;
    uint32_t address;
    uint16_t offset;
    uint16_t count;
};

struct GameModeRestart final : public net::Packet {
    LUNA_DEFINE_PACKET(true, 40);

    inline net::Packet* create() const override {
        return new GameModeRestart();        
    }

    void deserialise(serde::IDeserialiser& deserialiser) override;

    // Additional Information: This RPC reconnects a player to the server showing him "The server is restarting..." message.
};

struct ApplyPlayerAnimation final : public net::Packet {
    LUNA_DEFINE_PACKET(true, 86);

    inline net::Packet* create() const override {
        return new ApplyPlayerAnimation();        
    }

    void deserialise(serde::IDeserialiser& deserialiser) override;

    uint16_t playerID;
    std::string animLib;
    std::string animName;
    float delta;
    bool loop;
    bool lockx;
    bool locky;
    bool freeze;
    uint32_t time;
};

struct ClearPlayerAnimation final : public net::Packet {
    LUNA_DEFINE_PACKET(true, 87);

    inline net::Packet* create() const override {
        return new ClearPlayerAnimation();        
    }

    void deserialise(serde::IDeserialiser& deserialiser) override;

    uint16_t playerID;
};

struct DeathBroadcast final : public net::Packet {
    LUNA_DEFINE_PACKET(true, 166);

    inline net::Packet* create() const override {
        return new DeathBroadcast();        
    }

    void deserialise(serde::IDeserialiser& deserialiser) override;

    uint16_t playerID;
};

struct SetPlayerName final : public net::Packet {
    LUNA_DEFINE_PACKET(true, 11);

    inline net::Packet* create() const override {
        return new SetPlayerName();        
    }

    void deserialise(serde::IDeserialiser& deserialiser) override;

    uint16_t playerID;
    std::string name;
    uint8_t success;

    // Additional Information: Keep success parameter as 1.
};

struct SetPlayerPos final : public net::Packet {
    LUNA_DEFINE_PACKET(true, 12);

    inline net::Packet* create() const override {
        return new SetPlayerPos();        
    }

    void deserialise(serde::IDeserialiser& deserialiser) override;
    bool execute(net::Client& client) override;

    game::Vector position;
};

struct SetPlayerPosFindZ final : public net::Packet {
    LUNA_DEFINE_PACKET(true, 13);

    inline net::Packet* create() const override {
        return new SetPlayerPosFindZ();        
    }

    void deserialise(serde::IDeserialiser& deserialiser) override;

    float x;
    float y;
    float z;
};

struct SetPlayerSkillLevel final : public net::Packet {
    LUNA_DEFINE_PACKET(true, 34);

    inline net::Packet* create() const override {
        return new SetPlayerSkillLevel();        
    }

    void deserialise(serde::IDeserialiser& deserialiser) override;

    uint16_t playerID;
    uint32_t skillID;
    uint16_t level;
};

struct SetPlayerSkin final : public net::Packet {
    LUNA_DEFINE_PACKET(true, 153);

    inline net::Packet* create() const override {
        return new SetPlayerSkin();        
    }

    void deserialise(serde::IDeserialiser& deserialiser) override;

    uint32_t playerID;
    uint32_t skinID;
};

struct SetPlayerTime final : public net::Packet {
    LUNA_DEFINE_PACKET(true, 29);

    inline net::Packet* create() const override {
        return new SetPlayerTime();        
    }

    void deserialise(serde::IDeserialiser& deserialiser) override;

    uint8_t hour;
    uint8_t minute;
};

struct SetPlayerSpecialAction final : public net::Packet {
    LUNA_DEFINE_PACKET(true, 88);

    inline net::Packet* create() const override {
        return new SetPlayerSpecialAction();        
    }

    void deserialise(serde::IDeserialiser& deserialiser) override;

    uint8_t actionID;
};

struct SetWeather final : public net::Packet {
    LUNA_DEFINE_PACKET(true, 152);

    inline net::Packet* create() const override {
        return new SetWeather();        
    }

    void deserialise(serde::IDeserialiser& deserialiser) override;

    uint8_t weatherID;
};

struct SetWorldBounds final : public net::Packet {
    LUNA_DEFINE_PACKET(true, 17);

    inline net::Packet* create() const override {
        return new SetWorldBounds();        
    }

    void deserialise(serde::IDeserialiser& deserialiser) override;

    float maxX;
    float minX;
    float maxY;
    float minY;
};

struct SetPlayerVelocity final : public net::Packet {
    LUNA_DEFINE_PACKET(true, 90);

    inline net::Packet* create() const override {
        return new SetPlayerVelocity();        
    }

    void deserialise(serde::IDeserialiser& deserialiser) override;

    float x;
    float y;
    float z;
};

struct TogglePlayerControllable final : public net::Packet {
    LUNA_DEFINE_PACKET(true, 15);

    inline net::Packet* create() const override {
        return new TogglePlayerControllable();        
    }

    void deserialise(serde::IDeserialiser& deserialiser) override;

    bool moveable;
};

struct TogglePlayerSpectating final : public net::Packet {
    LUNA_DEFINE_PACKET(true, 124);

    inline net::Packet* create() const override {
        return new TogglePlayerSpectating();        
    }

    void deserialise(serde::IDeserialiser& deserialiser) override;

    bool spectating;
};

struct ToggleClock final : public net::Packet {
    LUNA_DEFINE_PACKET(true, 30);

    inline net::Packet* create() const override {
        return new ToggleClock();        
    }

    void deserialise(serde::IDeserialiser& deserialiser) override;

    bool toggle;
};

struct SetPlayerTeam final : public net::Packet {
    LUNA_DEFINE_PACKET(true, 69);

    inline net::Packet* create() const override {
        return new SetPlayerTeam();        
    }

    void deserialise(serde::IDeserialiser& deserialiser) override;

    uint16_t playerID;
    uint8_t teamID;
};

struct PlaySound final : public net::Packet {
    LUNA_DEFINE_PACKET(true, 16);

    inline net::Packet* create() const override {
        return new PlaySound();        
    }

    void deserialise(serde::IDeserialiser& deserialiser) override;

    uint32_t soundID;
    float x;
    float y;
    float z;
};

struct GivePlayerMoney final : public net::Packet {
    LUNA_DEFINE_PACKET(true, 18);

    inline net::Packet* create() const override {
        return new GivePlayerMoney();        
    }

    void deserialise(serde::IDeserialiser& deserialiser) override;

    int32_t money;
};

struct ResetPlayerMoney final : public net::Packet {
    LUNA_DEFINE_PACKET(true, 20);

    inline net::Packet* create() const override {
        return new ResetPlayerMoney();        
    }

    void deserialise(serde::IDeserialiser& deserialiser) override;
};

struct ResetPlayerWeapons final : public net::Packet {
    LUNA_DEFINE_PACKET(true, 21);

    inline net::Packet* create() const override {
        return new ResetPlayerWeapons();        
    }

    void deserialise(serde::IDeserialiser& deserialiser) override;
};

struct GivePlayerWeapon final : public net::Packet {
    LUNA_DEFINE_PACKET(true, 22);

    inline net::Packet* create() const override {
        return new GivePlayerWeapon();        
    }

    void deserialise(serde::IDeserialiser& deserialiser) override;

    uint32_t weaponID;
    uint32_t bullets;
};

struct PlayAudioStream final : public net::Packet {
    LUNA_DEFINE_PACKET(true, 41);

    inline net::Packet* create() const override {
        return new PlayAudioStream();        
    }

    void deserialise(serde::IDeserialiser& deserialiser) override;

    std::string url;
    float x;
    float y;
    float z;
    float radius;
    bool usePos;
};

struct PlayCrimeReport final : public net::Packet {
    LUNA_DEFINE_PACKET(true, 112);

    inline net::Packet* create() const override {
        return new PlayCrimeReport();        
    }

    void deserialise(serde::IDeserialiser& deserialiser) override;

    uint16_t suspectID;
    uint32_t inVehicle;
    uint32_t vehicleModel;
    uint32_t vehicleColor;
    uint32_t crime;
    float x;
    float y;
    float z;
};

struct StopAudioStream final : public net::Packet {
    LUNA_DEFINE_PACKET(true, 42);

    inline net::Packet* create() const override {
        return new StopAudioStream();        
    }

    void deserialise(serde::IDeserialiser& deserialiser) override;
};

struct SetPlayerHealth final : public net::Packet {
    LUNA_DEFINE_PACKET(true, 14);

    inline net::Packet* create() const override {
        return new SetPlayerHealth();        
    }

    void deserialise(serde::IDeserialiser& deserialiser) override;

    float health;
};

struct SetPlayerArmour final : public net::Packet {
    LUNA_DEFINE_PACKET(true, 66);

    inline net::Packet* create() const override {
        return new SetPlayerArmour();        
    }

    void deserialise(serde::IDeserialiser& deserialiser) override;

    float armour;
};

struct SetWeaponAmmo final : public net::Packet {
    LUNA_DEFINE_PACKET(true, 145);

    inline net::Packet* create() const override {
        return new SetWeaponAmmo();        
    }

    void deserialise(serde::IDeserialiser& deserialiser) override;

    uint8_t weaponID;
    uint16_t ammo;
};

struct SetCameraBehind final : public net::Packet {
    LUNA_DEFINE_PACKET(true, 162);

    inline net::Packet* create() const override {
        return new SetCameraBehind();        
    }

    void deserialise(serde::IDeserialiser& deserialiser) override;
};

struct SetArmedWeapon final : public net::Packet {
    LUNA_DEFINE_PACKET(true, 67);

    inline net::Packet* create() const override {
        return new SetArmedWeapon();        
    }

    void deserialise(serde::IDeserialiser& deserialiser) override;

    uint32_t weaponID;
};

struct WorldPlayerAdd final : public net::Packet {
    LUNA_DEFINE_PACKET(true, 32);

    inline net::Packet* create() const override {
        return new WorldPlayerAdd();        
    }

    void deserialise(serde::IDeserialiser& deserialiser) override;

    uint16_t playerID;
    uint8_t team;
    uint32_t skinID;
    float posX;
    float posY;
    float posZ;
    float facingAngle;
    uint32_t playerColor;
    uint8_t fightingStyle;
    uint16_t skillLevel[11];
};

struct WorldPlayerRemove final : public net::Packet {
    LUNA_DEFINE_PACKET(true, 163);

    inline net::Packet* create() const override {
        return new WorldPlayerRemove();        
    }

    void deserialise(serde::IDeserialiser& deserialiser) override;

    uint16_t playerID;
};

struct InterpolateCamera final : public net::Packet {
    LUNA_DEFINE_PACKET(true, 82);

    inline net::Packet* create() const override {
        return new InterpolateCamera();        
    }

    void deserialise(serde::IDeserialiser& deserialiser) override;

    bool posSet;
    float fromPosX;
    float fromPosY;
    float fromPosZ;
    float toPosX;
    float toPosY;
    float toPosZ;
    uint32_t time;
    uint8_t cutType;
};

struct CreateExplosion final : public net::Packet {
    LUNA_DEFINE_PACKET(true, 79);

    inline net::Packet* create() const override {
        return new CreateExplosion();        
    }

    void deserialise(serde::IDeserialiser& deserialiser) override;

    float x;
    float y;
    float z;
    uint32_t type;
    float radius;
};

struct SendDeathMessage final : public net::Packet {
    LUNA_DEFINE_PACKET(true, 55);

    inline net::Packet* create() const override {
        return new SendDeathMessage();        
    }

    void deserialise(serde::IDeserialiser& deserialiser) override;

    uint16_t killerID;
    uint16_t playerID;
    uint8_t reason;
};

struct SendGameTimeUpdate final : public net::Packet {
    LUNA_DEFINE_PACKET(true, 60);

    inline net::Packet* create() const override {
        return new SendGameTimeUpdate();        
    }

    void deserialise(serde::IDeserialiser& deserialiser) override;

    int32_t time;
};

struct SendClientMessage final : public net::Packet {
    LUNA_DEFINE_PACKET(true, 93);

    inline net::Packet* create() const override {
        return new SendClientMessage();        
    }

    void deserialise(serde::IDeserialiser& deserialiser) override;

    uint32_t color;
    std::string message;
};

struct SetShopName final : public net::Packet {
    LUNA_DEFINE_PACKET(true, 33);

    inline net::Packet* create() const override {
        return new SetShopName();        
    }

    void deserialise(serde::IDeserialiser& deserialiser) override;

    std::string name;
};

struct SetPlayerDrunkLevel final : public net::Packet {
    LUNA_DEFINE_PACKET(true, 35);

    inline net::Packet* create() const override {
        return new SetPlayerDrunkLevel();        
    }

    void deserialise(serde::IDeserialiser& deserialiser) override;

    int32_t drunkLevel;
};

struct SetPlayerFightingStyle final : public net::Packet {
    LUNA_DEFINE_PACKET(true, 89);

    inline net::Packet* create() const override {
        return new SetPlayerFightingStyle();        
    }

    void deserialise(serde::IDeserialiser& deserialiser) override;

    uint16_t playerID;
    uint8_t fightStyle;
};

struct SetInterior final : public net::Packet {
    LUNA_DEFINE_PACKET(true, 156);

    inline net::Packet* create() const override {
        return new SetInterior();        
    }

    void deserialise(serde::IDeserialiser& deserialiser) override;

    uint8_t interiorID;
};

struct SetPlayerColor final : public net::Packet {
    LUNA_DEFINE_PACKET(true, 72);

    inline net::Packet* create() const override {
        return new SetPlayerColor();        
    }

    void deserialise(serde::IDeserialiser& deserialiser) override;

    uint16_t playerID;
    uint32_t color;
};

struct ForceClassSelection final : public net::Packet {
    LUNA_DEFINE_PACKET(true, 74);

    inline net::Packet* create() const override {
        return new ForceClassSelection();        
    }

    void deserialise(serde::IDeserialiser& deserialiser) override;
};

struct ToggleWidescreen final : public net::Packet {
    LUNA_DEFINE_PACKET(true, 111);

    inline net::Packet* create() const override {
        return new ToggleWidescreen();        
    }

    void deserialise(serde::IDeserialiser& deserialiser) override;

    uint8_t enable;
};

struct SetPlayerWantedLevel final : public net::Packet {
    LUNA_DEFINE_PACKET(true, 133);

    inline net::Packet* create() const override {
        return new SetPlayerWantedLevel();        
    }

    void deserialise(serde::IDeserialiser& deserialiser) override;

    uint8_t wantedLevel;
};

struct SetCameraPos final : public net::Packet {
    LUNA_DEFINE_PACKET(true, 157);

    inline net::Packet* create() const override {
        return new SetCameraPos();        
    }

    void deserialise(serde::IDeserialiser& deserialiser) override;

    float lookPosX;
    float lookPosY;
    float lookPosZ;
};

struct SetCameraLookAt final : public net::Packet {
    LUNA_DEFINE_PACKET(true, 158);

    inline net::Packet* create() const override {
        return new SetCameraLookAt();        
    }

    void deserialise(serde::IDeserialiser& deserialiser) override;

    float lookPosX;
    float lookPosY;
    float lookPosZ;
    uint8_t cutType;
};

} // namespace luna::netcode
