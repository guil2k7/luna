.class public Lcom/google/gms/googleservices/GoogleServicesTask;
.super Lorg/gradle/api/DefaultTask;
.source "GoogleServicesTask.java"


# static fields
.field private static final OAUTH_CLIENT_TYPE_WEB:Ljava/lang/String; = "3"

.field private static final STATUS_DISABLED:Ljava/lang/String; = "1"

.field private static final STATUS_ENABLED:Ljava/lang/String; = "2"


# instance fields
.field public intermediateDir:Ljava/io/File;
    .annotation runtime Lorg/gradle/api/tasks/OutputDirectory;
    .end annotation
.end field

.field public moduleGroup:Ljava/lang/String;
    .annotation runtime Lorg/gradle/api/tasks/Input;
    .end annotation
.end field

.field public moduleVersion:Ljava/lang/String;
    .annotation runtime Lorg/gradle/api/tasks/Input;
    .end annotation
.end field

.field public packageName:Ljava/lang/String;
    .annotation runtime Lorg/gradle/api/tasks/Input;
    .end annotation
.end field

.field public quickstartFile:Ljava/io/File;
    .annotation runtime Lorg/gradle/api/tasks/InputFile;
    .end annotation

    .annotation runtime Lorg/gradle/api/tasks/Optional;
    .end annotation
.end field

.field public searchedLocation:Ljava/lang/String;
    .annotation runtime Lorg/gradle/api/tasks/Input;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lorg/gradle/api/DefaultTask;-><init>()V

    return-void
.end method

.method private checkVersionConflict()V
    .locals 17

    .prologue
    .line 133
    invoke-virtual/range {p0 .. p0}, Lcom/google/gms/googleservices/GoogleServicesTask;->getProject()Lorg/gradle/api/Project;

    move-result-object v6

    .line 134
    .local v6, "project":Lorg/gradle/api/Project;
    invoke-interface {v6}, Lorg/gradle/api/Project;->getConfigurations()Lorg/gradle/api/artifacts/ConfigurationContainer;

    move-result-object v2

    .line 135
    .local v2, "configurations":Lorg/gradle/api/artifacts/ConfigurationContainer;
    if-nez v2, :cond_1

    .line 166
    :cond_0
    return-void

    .line 138
    :cond_1
    const/4 v5, 0x0

    .line 139
    .local v5, "hasConflict":Z
    invoke-interface {v2}, Lorg/gradle/api/artifacts/ConfigurationContainer;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/gradle/api/artifacts/Configuration;

    .line 140
    .local v1, "configuration":Lorg/gradle/api/artifacts/Configuration;
    if-eqz v1, :cond_2

    .line 143
    invoke-interface {v1}, Lorg/gradle/api/artifacts/Configuration;->getDependencies()Lorg/gradle/api/artifacts/DependencySet;

    move-result-object v3

    .line 144
    .local v3, "dependencies":Lorg/gradle/api/artifacts/DependencySet;
    if-eqz v3, :cond_2

    .line 147
    invoke-interface {v3}, Lorg/gradle/api/artifacts/DependencySet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/gradle/api/artifacts/Dependency;

    .line 148
    .local v4, "dependency":Lorg/gradle/api/artifacts/Dependency;
    if-eqz v4, :cond_3

    invoke-interface {v4}, Lorg/gradle/api/artifacts/Dependency;->getGroup()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_3

    invoke-interface {v4}, Lorg/gradle/api/artifacts/Dependency;->getVersion()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 151
    invoke-interface {v4}, Lorg/gradle/api/artifacts/Dependency;->getGroup()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/gms/googleservices/GoogleServicesTask;->moduleGroup:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 152
    invoke-interface {v4}, Lorg/gradle/api/artifacts/Dependency;->getVersion()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/gms/googleservices/GoogleServicesTask;->moduleVersion:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 153
    const/4 v5, 0x1

    .line 154
    invoke-interface {v6}, Lorg/gradle/api/Project;->getLogger()Lorg/gradle/api/logging/Logger;

    move-result-object v9

    invoke-interface {v4}, Lorg/gradle/api/artifacts/Dependency;->getGroup()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 155
    invoke-interface {v4}, Lorg/gradle/api/artifacts/Dependency;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v4}, Lorg/gradle/api/artifacts/Dependency;->getVersion()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/gms/googleservices/GoogleServicesTask;->moduleVersion:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    add-int/lit8 v15, v15, 0x40

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    add-int v15, v15, v16

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    add-int v15, v15, v16

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    add-int v15, v15, v16

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v15, "Found "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v14, ":"

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", but version "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " is needed for the google-services plugin."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 154
    invoke-interface {v9, v10}, Lorg/gradle/api/logging/Logger;->warn(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 160
    .end local v1    # "configuration":Lorg/gradle/api/artifacts/Configuration;
    .end local v3    # "dependencies":Lorg/gradle/api/artifacts/DependencySet;
    .end local v4    # "dependency":Lorg/gradle/api/artifacts/Dependency;
    :cond_4
    if-eqz v5, :cond_0

    .line 161
    new-instance v7, Lorg/gradle/api/GradleException;

    const-string v8, "Please fix the version conflict either by updating the version of the google-services plugin (information about the latest version is available at https://bintray.com/android/android-tools/com.google.gms.google-services/) or updating the version of "

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/gms/googleservices/GoogleServicesTask;->moduleGroup:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/gms/googleservices/GoogleServicesTask;->moduleVersion:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, 0x5

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    add-int/2addr v12, v13

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    add-int/2addr v12, v13

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/gradle/api/GradleException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method private static deleteFolder(Ljava/io/File;)V
    .locals 6
    .param p0, "folder"    # Ljava/io/File;

    .prologue
    .line 441
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 459
    :cond_0
    return-void

    .line 444
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 445
    .local v1, "files":[Ljava/io/File;
    if-eqz v1, :cond_4

    .line 446
    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_4

    aget-object v0, v1, v2

    .line 447
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 448
    invoke-static {v0}, Lcom/google/gms/googleservices/GoogleServicesTask;->deleteFolder(Ljava/io/File;)V

    .line 446
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 450
    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_2

    .line 451
    new-instance v2, Lorg/gradle/api/GradleException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x12

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Failed to delete: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/gradle/api/GradleException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 456
    .end local v0    # "file":Ljava/io/File;
    :cond_4
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_0

    .line 457
    new-instance v2, Lorg/gradle/api/GradleException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x12

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Failed to delete: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/gradle/api/GradleException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static findStringByName(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .param p0, "jsonObject"    # Lcom/google/gson/JsonObject;
    .param p1, "stringName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/JsonObject;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 317
    .local p2, "resValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0, p1}, Lcom/google/gson/JsonObject;->getAsJsonPrimitive(Ljava/lang/String;)Lcom/google/gson/JsonPrimitive;

    move-result-object v0

    .line 318
    .local v0, "id":Lcom/google/gson/JsonPrimitive;
    if-eqz v0, :cond_0

    .line 319
    invoke-virtual {v0}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    :cond_0
    return-void
.end method

.method private getAndroidApiKey(Lcom/google/gson/JsonObject;)Ljava/lang/String;
    .locals 7
    .param p1, "clientObject"    # Lcom/google/gson/JsonObject;

    .prologue
    .line 296
    const-string v6, "api_key"

    invoke-virtual {p1, v6}, Lcom/google/gson/JsonObject;->getAsJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object v2

    .line 297
    .local v2, "array":Lcom/google/gson/JsonArray;
    if-eqz v2, :cond_2

    .line 298
    invoke-virtual {v2}, Lcom/google/gson/JsonArray;->size()I

    move-result v3

    .line 299
    .local v3, "count":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v3, :cond_2

    .line 300
    invoke-virtual {v2, v5}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v0

    .line 301
    .local v0, "apiKeyElement":Lcom/google/gson/JsonElement;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    move-result v6

    if-nez v6, :cond_1

    .line 299
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 304
    :cond_1
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v1

    .line 305
    .local v1, "apiKeyObject":Lcom/google/gson/JsonObject;
    const-string v6, "current_key"

    invoke-virtual {v1, v6}, Lcom/google/gson/JsonObject;->getAsJsonPrimitive(Ljava/lang/String;)Lcom/google/gson/JsonPrimitive;

    move-result-object v4

    .line 306
    .local v4, "currentKey":Lcom/google/gson/JsonPrimitive;
    if-eqz v4, :cond_0

    .line 309
    invoke-virtual {v4}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v6

    .line 312
    .end local v0    # "apiKeyElement":Lcom/google/gson/JsonElement;
    .end local v1    # "apiKeyObject":Lcom/google/gson/JsonObject;
    .end local v3    # "count":I
    .end local v4    # "currentKey":Lcom/google/gson/JsonPrimitive;
    .end local v5    # "i":I
    :goto_1
    return-object v6

    :cond_2
    const/4 v6, 0x0

    goto :goto_1
.end method

.method private getClientForPackageName(Lcom/google/gson/JsonObject;)Lcom/google/gson/JsonObject;
    .locals 10
    .param p1, "jsonObject"    # Lcom/google/gson/JsonObject;

    .prologue
    .line 329
    const-string v8, "client"

    invoke-virtual {p1, v8}, Lcom/google/gson/JsonObject;->getAsJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object v1

    .line 330
    .local v1, "array":Lcom/google/gson/JsonArray;
    if-eqz v1, :cond_2

    .line 331
    invoke-virtual {v1}, Lcom/google/gson/JsonArray;->size()I

    move-result v6

    .line 332
    .local v6, "count":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v6, :cond_2

    .line 333
    invoke-virtual {v1, v7}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v2

    .line 334
    .local v2, "clientElement":Lcom/google/gson/JsonElement;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    move-result v8

    if-nez v8, :cond_1

    .line 332
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 338
    :cond_1
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v4

    .line 340
    .local v4, "clientObject":Lcom/google/gson/JsonObject;
    const-string v8, "client_info"

    invoke-virtual {v4, v8}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v3

    .line 341
    .local v3, "clientInfo":Lcom/google/gson/JsonObject;
    if-eqz v3, :cond_0

    .line 343
    const-string v8, "android_client_info"

    invoke-virtual {v3, v8}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 344
    .local v0, "androidClientInfo":Lcom/google/gson/JsonObject;
    if-eqz v0, :cond_0

    .line 346
    const-string v8, "package_name"

    invoke-virtual {v0, v8}, Lcom/google/gson/JsonObject;->getAsJsonPrimitive(Ljava/lang/String;)Lcom/google/gson/JsonPrimitive;

    move-result-object v5

    .line 347
    .local v5, "clientPackageName":Lcom/google/gson/JsonPrimitive;
    if-eqz v5, :cond_0

    .line 349
    iget-object v8, p0, Lcom/google/gms/googleservices/GoogleServicesTask;->packageName:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 355
    .end local v0    # "androidClientInfo":Lcom/google/gson/JsonObject;
    .end local v2    # "clientElement":Lcom/google/gson/JsonElement;
    .end local v3    # "clientInfo":Lcom/google/gson/JsonObject;
    .end local v4    # "clientObject":Lcom/google/gson/JsonObject;
    .end local v5    # "clientPackageName":Lcom/google/gson/JsonPrimitive;
    .end local v6    # "count":I
    .end local v7    # "i":I
    :goto_1
    return-object v4

    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private static getGlobalTrackerContent(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "ga_trackingId"    # Ljava/lang/String;

    .prologue
    .line 410
    const-string v0, "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<resources>\n    <string name=\"ga_trackingId\" translatable=\"false\">"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x17

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</string>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</resources>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getServiceByName(Lcom/google/gson/JsonObject;Ljava/lang/String;)Lcom/google/gson/JsonObject;
    .locals 9
    .param p1, "clientObject"    # Lcom/google/gson/JsonObject;
    .param p2, "serviceName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 387
    const-string v5, "services"

    invoke-virtual {p1, v5}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v1

    .line 388
    .local v1, "services":Lcom/google/gson/JsonObject;
    if-nez v1, :cond_1

    move-object v0, v4

    .line 406
    :cond_0
    :goto_0
    return-object v0

    .line 390
    :cond_1
    invoke-virtual {v1, p2}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 391
    .local v0, "service":Lcom/google/gson/JsonObject;
    if-nez v0, :cond_2

    move-object v0, v4

    goto :goto_0

    .line 393
    :cond_2
    const-string v5, "status"

    invoke-virtual {v0, v5}, Lcom/google/gson/JsonObject;->getAsJsonPrimitive(Ljava/lang/String;)Lcom/google/gson/JsonPrimitive;

    move-result-object v2

    .line 394
    .local v2, "status":Lcom/google/gson/JsonPrimitive;
    if-nez v2, :cond_3

    move-object v0, v4

    goto :goto_0

    .line 396
    :cond_3
    invoke-virtual {v2}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v3

    .line 398
    .local v3, "statusStr":Ljava/lang/String;
    const-string v5, "1"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    move-object v0, v4

    goto :goto_0

    .line 399
    :cond_4
    const-string v5, "2"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 400
    invoke-virtual {p0}, Lcom/google/gms/googleservices/GoogleServicesTask;->getLogger()Lorg/gradle/api/logging/Logger;

    move-result-object v5

    const-string v6, "Status with value \'%1$s\' for service \'%2$s\' is unknown"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    const/4 v8, 0x1

    aput-object p2, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/gradle/api/logging/Logger;->warn(Ljava/lang/String;)V

    move-object v0, v4

    .line 403
    goto :goto_0
.end method

.method private static getValuesContent(Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 418
    .local p0, "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p1, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x100

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 420
    .local v3, "sb":Ljava/lang/StringBuilder;
    const-string v4, "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<resources>\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 424
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 425
    .local v2, "name":Ljava/lang/String;
    const-string v4, "    <string name=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\" translatable=\"false\""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 427
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 428
    .local v0, "attr":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "=\""

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 429
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "\""

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 432
    .end local v0    # "attr":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "</string>\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 435
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "name":Ljava/lang/String;
    :cond_1
    const-string v4, "</resources>\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private handleAnalytics(Lcom/google/gson/JsonObject;Ljava/util/Map;)V
    .locals 8
    .param p1, "clientObject"    # Lcom/google/gson/JsonObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/JsonObject;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 241
    .local p2, "resValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "analytics_service"

    invoke-direct {p0, p1, v4}, Lcom/google/gms/googleservices/GoogleServicesTask;->getServiceByName(Lcom/google/gson/JsonObject;Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v1

    .line 242
    .local v1, "analyticsService":Lcom/google/gson/JsonObject;
    if-nez v1, :cond_1

    .line 261
    :cond_0
    :goto_0
    return-void

    .line 244
    :cond_1
    const-string v4, "analytics_property"

    invoke-virtual {v1, v4}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 245
    .local v0, "analyticsProp":Lcom/google/gson/JsonObject;
    if-eqz v0, :cond_0

    .line 247
    const-string v4, "tracking_id"

    invoke-virtual {v0, v4}, Lcom/google/gson/JsonObject;->getAsJsonPrimitive(Ljava/lang/String;)Lcom/google/gson/JsonPrimitive;

    move-result-object v2

    .line 248
    .local v2, "trackingId":Lcom/google/gson/JsonPrimitive;
    if-eqz v2, :cond_0

    .line 250
    const-string v4, "ga_trackingId"

    invoke-virtual {v2}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/google/gms/googleservices/GoogleServicesTask;->intermediateDir:Ljava/io/File;

    const-string v5, "xml"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 253
    .local v3, "xml":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-nez v4, :cond_2

    .line 254
    new-instance v4, Lorg/gradle/api/GradleException;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x19

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "Failed to create folder: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/gradle/api/GradleException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 258
    :cond_2
    invoke-virtual {v2}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v4

    .line 257
    invoke-static {v4}, Lcom/google/gms/googleservices/GoogleServicesTask;->getGlobalTrackerContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/io/File;

    const-string v6, "global_tracker.xml"

    invoke-direct {v5, v3, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sget-object v6, Lcom/google/common/base/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v4, v5, v6}, Lcom/google/common/io/Files;->write(Ljava/lang/CharSequence;Ljava/io/File;Ljava/nio/charset/Charset;)V

    goto :goto_0
.end method

.method private handleFirebaseUrl(Lcom/google/gson/JsonObject;Ljava/util/Map;)V
    .locals 4
    .param p1, "rootObject"    # Lcom/google/gson/JsonObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/JsonObject;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 170
    .local p2, "resValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "project_info"

    invoke-virtual {p1, v2}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v1

    .line 171
    .local v1, "projectInfo":Lcom/google/gson/JsonObject;
    if-nez v1, :cond_0

    .line 172
    new-instance v2, Lorg/gradle/api/GradleException;

    const-string v3, "Missing project_info object"

    invoke-direct {v2, v3}, Lorg/gradle/api/GradleException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 175
    :cond_0
    const-string v2, "firebase_url"

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->getAsJsonPrimitive(Ljava/lang/String;)Lcom/google/gson/JsonPrimitive;

    move-result-object v0

    .line 176
    .local v0, "firebaseUrl":Lcom/google/gson/JsonPrimitive;
    if-eqz v0, :cond_1

    .line 177
    const-string v2, "firebase_database_url"

    invoke-virtual {v0}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    :cond_1
    return-void
.end method

.method private handleGoogleApiKey(Lcom/google/gson/JsonObject;Ljava/util/Map;)V
    .locals 3
    .param p1, "clientObject"    # Lcom/google/gson/JsonObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/JsonObject;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 282
    .local p2, "resValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/google/gms/googleservices/GoogleServicesTask;->getAndroidApiKey(Lcom/google/gson/JsonObject;)Ljava/lang/String;

    move-result-object v0

    .line 283
    .local v0, "apiKey":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 284
    const-string v1, "google_api_key"

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    const-string v1, "google_crash_reporting_api_key"

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    return-void

    .line 292
    :cond_0
    new-instance v1, Lorg/gradle/api/GradleException;

    const-string v2, "Missing api_key/current_key object"

    invoke-direct {v1, v2}, Lorg/gradle/api/GradleException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private handleGoogleAppId(Lcom/google/gson/JsonObject;Ljava/util/Map;)V
    .locals 5
    .param p1, "clientObject"    # Lcom/google/gson/JsonObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/JsonObject;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 363
    .local p2, "resValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "client_info"

    invoke-virtual {p1, v3}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 364
    .local v0, "clientInfo":Lcom/google/gson/JsonObject;
    if-nez v0, :cond_0

    .line 366
    new-instance v3, Lorg/gradle/api/GradleException;

    const-string v4, "Client does not have client info"

    invoke-direct {v3, v4}, Lorg/gradle/api/GradleException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 369
    :cond_0
    const-string v3, "mobilesdk_app_id"

    invoke-virtual {v0, v3}, Lcom/google/gson/JsonObject;->getAsJsonPrimitive(Ljava/lang/String;)Lcom/google/gson/JsonPrimitive;

    move-result-object v1

    .line 370
    .local v1, "googleAppId":Lcom/google/gson/JsonPrimitive;
    if-nez v1, :cond_2

    .line 376
    :cond_1
    :goto_0
    return-void

    .line 372
    :cond_2
    invoke-virtual {v1}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v2

    .line 373
    .local v2, "googleAppIdStr":Ljava/lang/String;
    invoke-static {v2}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 375
    const-string v3, "google_app_id"

    invoke-interface {p2, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private handleMapsService(Lcom/google/gson/JsonObject;Ljava/util/Map;)V
    .locals 4
    .param p1, "clientObject"    # Lcom/google/gson/JsonObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/JsonObject;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 270
    .local p2, "resValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "maps_service"

    invoke-direct {p0, p1, v2}, Lcom/google/gms/googleservices/GoogleServicesTask;->getServiceByName(Lcom/google/gson/JsonObject;Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v1

    .line 271
    .local v1, "mapsService":Lcom/google/gson/JsonObject;
    if-nez v1, :cond_0

    .line 276
    :goto_0
    return-void

    .line 273
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/gms/googleservices/GoogleServicesTask;->getAndroidApiKey(Lcom/google/gson/JsonObject;)Ljava/lang/String;

    move-result-object v0

    .line 274
    .local v0, "apiKey":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 275
    const-string v2, "google_maps_key"

    invoke-interface {p2, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 278
    :cond_1
    new-instance v2, Lorg/gradle/api/GradleException;

    const-string v3, "Missing api_key/current_key object"

    invoke-direct {v2, v3}, Lorg/gradle/api/GradleException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private handleProjectNumberAndProjectId(Lcom/google/gson/JsonObject;Ljava/util/Map;)V
    .locals 5
    .param p1, "rootObject"    # Lcom/google/gson/JsonObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/JsonObject;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 188
    .local p2, "resValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "project_info"

    invoke-virtual {p1, v3}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v1

    .line 189
    .local v1, "projectInfo":Lcom/google/gson/JsonObject;
    if-nez v1, :cond_0

    .line 190
    new-instance v3, Lorg/gradle/api/GradleException;

    const-string v4, "Missing project_info object"

    invoke-direct {v3, v4}, Lorg/gradle/api/GradleException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 193
    :cond_0
    const-string v3, "project_number"

    invoke-virtual {v1, v3}, Lcom/google/gson/JsonObject;->getAsJsonPrimitive(Ljava/lang/String;)Lcom/google/gson/JsonPrimitive;

    move-result-object v2

    .line 194
    .local v2, "projectNumber":Lcom/google/gson/JsonPrimitive;
    if-nez v2, :cond_1

    .line 195
    new-instance v3, Lorg/gradle/api/GradleException;

    const-string v4, "Missing project_info/project_number object"

    invoke-direct {v3, v4}, Lorg/gradle/api/GradleException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 198
    :cond_1
    const-string v3, "gcm_defaultSenderId"

    invoke-virtual {v2}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    const-string v3, "storage_bucket"

    invoke-virtual {v1, v3}, Lcom/google/gson/JsonObject;->getAsJsonPrimitive(Ljava/lang/String;)Lcom/google/gson/JsonPrimitive;

    move-result-object v0

    .line 201
    .local v0, "bucketName":Lcom/google/gson/JsonPrimitive;
    if-eqz v0, :cond_2

    .line 202
    const-string v3, "google_storage_bucket"

    invoke-virtual {v0}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    :cond_2
    return-void
.end method

.method private handleWebClientId(Lcom/google/gson/JsonObject;Ljava/util/Map;)V
    .locals 10
    .param p1, "clientObject"    # Lcom/google/gson/JsonObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/JsonObject;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 207
    .local p2, "resValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v8, "oauth_client"

    invoke-virtual {p1, v8}, Lcom/google/gson/JsonObject;->getAsJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object v0

    .line 208
    .local v0, "array":Lcom/google/gson/JsonArray;
    if-eqz v0, :cond_2

    .line 209
    invoke-virtual {v0}, Lcom/google/gson/JsonArray;->size()I

    move-result v4

    .line 210
    .local v4, "count":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v4, :cond_2

    .line 211
    invoke-virtual {v0, v5}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v6

    .line 212
    .local v6, "oauthClientElement":Lcom/google/gson/JsonElement;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    move-result v8

    if-nez v8, :cond_1

    .line 210
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 215
    :cond_1
    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v7

    .line 216
    .local v7, "oauthClientObject":Lcom/google/gson/JsonObject;
    const-string v8, "client_type"

    invoke-virtual {v7, v8}, Lcom/google/gson/JsonObject;->getAsJsonPrimitive(Ljava/lang/String;)Lcom/google/gson/JsonPrimitive;

    move-result-object v2

    .line 217
    .local v2, "clientType":Lcom/google/gson/JsonPrimitive;
    if-eqz v2, :cond_0

    .line 220
    invoke-virtual {v2}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v3

    .line 221
    .local v3, "clientTypeStr":Ljava/lang/String;
    const-string v8, "3"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 224
    const-string v8, "client_id"

    invoke-virtual {v7, v8}, Lcom/google/gson/JsonObject;->getAsJsonPrimitive(Ljava/lang/String;)Lcom/google/gson/JsonPrimitive;

    move-result-object v1

    .line 225
    .local v1, "clientId":Lcom/google/gson/JsonPrimitive;
    if-eqz v1, :cond_0

    .line 228
    const-string v8, "default_web_client_id"

    invoke-virtual {v1}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {p2, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    .end local v1    # "clientId":Lcom/google/gson/JsonPrimitive;
    .end local v2    # "clientType":Lcom/google/gson/JsonPrimitive;
    .end local v3    # "clientTypeStr":Ljava/lang/String;
    .end local v4    # "count":I
    .end local v5    # "i":I
    .end local v6    # "oauthClientElement":Lcom/google/gson/JsonElement;
    .end local v7    # "oauthClientObject":Lcom/google/gson/JsonObject;
    :cond_2
    return-void
.end method


# virtual methods
.method public action()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lorg/gradle/api/tasks/TaskAction;
    .end annotation

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/google/gms/googleservices/GoogleServicesTask;->checkVersionConflict()V

    .line 80
    iget-object v6, p0, Lcom/google/gms/googleservices/GoogleServicesTask;->quickstartFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v6

    if-nez v6, :cond_0

    .line 81
    new-instance v6, Lorg/gradle/api/GradleException;

    const-string v7, "File %s is missing. The Google Services Plugin cannot function without it. %n Searched Location: %s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/google/gms/googleservices/GoogleServicesTask;->quickstartFile:Ljava/io/File;

    .line 83
    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/google/gms/googleservices/GoogleServicesTask;->searchedLocation:Ljava/lang/String;

    aput-object v10, v8, v9

    .line 81
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/gradle/api/GradleException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 86
    :cond_0
    invoke-virtual {p0}, Lcom/google/gms/googleservices/GoogleServicesTask;->getProject()Lorg/gradle/api/Project;

    move-result-object v6

    invoke-interface {v6}, Lorg/gradle/api/Project;->getLogger()Lorg/gradle/api/logging/Logger;

    move-result-object v7

    const-string v8, "Parsing json file: "

    iget-object v6, p0, Lcom/google/gms/googleservices/GoogleServicesTask;->quickstartFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {v8, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_0
    invoke-interface {v7, v6}, Lorg/gradle/api/logging/Logger;->warn(Ljava/lang/String;)V

    .line 89
    iget-object v6, p0, Lcom/google/gms/googleservices/GoogleServicesTask;->intermediateDir:Ljava/io/File;

    invoke-static {v6}, Lcom/google/gms/googleservices/GoogleServicesTask;->deleteFolder(Ljava/io/File;)V

    .line 90
    iget-object v6, p0, Lcom/google/gms/googleservices/GoogleServicesTask;->intermediateDir:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    move-result v6

    if-nez v6, :cond_2

    .line 91
    new-instance v6, Lorg/gradle/api/GradleException;

    iget-object v7, p0, Lcom/google/gms/googleservices/GoogleServicesTask;->intermediateDir:Ljava/io/File;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, 0x19

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v9, "Failed to create folder: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/gradle/api/GradleException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 86
    :cond_1
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 94
    :cond_2
    new-instance v6, Lcom/google/gson/JsonParser;

    invoke-direct {v6}, Lcom/google/gson/JsonParser;-><init>()V

    iget-object v7, p0, Lcom/google/gms/googleservices/GoogleServicesTask;->quickstartFile:Ljava/io/File;

    sget-object v8, Lcom/google/common/base/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v7, v8}, Lcom/google/common/io/Files;->newReader(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/io/BufferedReader;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/gson/JsonParser;->parse(Ljava/io/Reader;)Lcom/google/gson/JsonElement;

    move-result-object v3

    .line 96
    .local v3, "root":Lcom/google/gson/JsonElement;
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    move-result v6

    if-nez v6, :cond_3

    .line 97
    new-instance v6, Lorg/gradle/api/GradleException;

    const-string v7, "Malformed root json"

    invoke-direct {v6, v7}, Lorg/gradle/api/GradleException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 100
    :cond_3
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v4

    .line 102
    .local v4, "rootObject":Lcom/google/gson/JsonObject;
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    .line 103
    .local v2, "resValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 105
    .local v1, "resAttributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-direct {p0, v4, v2}, Lcom/google/gms/googleservices/GoogleServicesTask;->handleProjectNumberAndProjectId(Lcom/google/gson/JsonObject;Ljava/util/Map;)V

    .line 106
    invoke-direct {p0, v4, v2}, Lcom/google/gms/googleservices/GoogleServicesTask;->handleFirebaseUrl(Lcom/google/gson/JsonObject;Ljava/util/Map;)V

    .line 108
    invoke-direct {p0, v4}, Lcom/google/gms/googleservices/GoogleServicesTask;->getClientForPackageName(Lcom/google/gson/JsonObject;)Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 110
    .local v0, "clientObject":Lcom/google/gson/JsonObject;
    if-eqz v0, :cond_4

    .line 111
    invoke-direct {p0, v0, v2}, Lcom/google/gms/googleservices/GoogleServicesTask;->handleAnalytics(Lcom/google/gson/JsonObject;Ljava/util/Map;)V

    .line 112
    invoke-direct {p0, v0, v2}, Lcom/google/gms/googleservices/GoogleServicesTask;->handleMapsService(Lcom/google/gson/JsonObject;Ljava/util/Map;)V

    .line 113
    invoke-direct {p0, v0, v2}, Lcom/google/gms/googleservices/GoogleServicesTask;->handleGoogleApiKey(Lcom/google/gson/JsonObject;Ljava/util/Map;)V

    .line 114
    invoke-direct {p0, v0, v2}, Lcom/google/gms/googleservices/GoogleServicesTask;->handleGoogleAppId(Lcom/google/gson/JsonObject;Ljava/util/Map;)V

    .line 115
    invoke-direct {p0, v0, v2}, Lcom/google/gms/googleservices/GoogleServicesTask;->handleWebClientId(Lcom/google/gson/JsonObject;Ljava/util/Map;)V

    .line 121
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/google/gms/googleservices/GoogleServicesTask;->intermediateDir:Ljava/io/File;

    const-string v7, "values"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 122
    .local v5, "values":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_5

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    move-result v6

    if-nez v6, :cond_5

    .line 123
    new-instance v6, Lorg/gradle/api/GradleException;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, 0x19

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v9, "Failed to create folder: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/gradle/api/GradleException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 117
    .end local v5    # "values":Ljava/io/File;
    :cond_4
    new-instance v6, Lorg/gradle/api/GradleException;

    iget-object v7, p0, Lcom/google/gms/googleservices/GoogleServicesTask;->packageName:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, 0x2c

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v9, "No matching client found for package name \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/gradle/api/GradleException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 126
    .restart local v5    # "values":Ljava/io/File;
    :cond_5
    invoke-static {v2, v1}, Lcom/google/gms/googleservices/GoogleServicesTask;->getValuesContent(Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/io/File;

    const-string v8, "values.xml"

    invoke-direct {v7, v5, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sget-object v8, Lcom/google/common/base/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v6, v7, v8}, Lcom/google/common/io/Files;->write(Ljava/lang/CharSequence;Ljava/io/File;Ljava/nio/charset/Charset;)V

    .line 127
    return-void
.end method
