.class public Lcom/google/gms/googleservices/GoogleServicesPlugin;
.super Ljava/lang/Object;
.source "GoogleServicesPlugin.groovy"

# interfaces
.implements Lorg/gradle/api/Plugin;
.implements Lgroovy/lang/GroovyObject;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/gradle/api/Plugin",
        "<",
        "Lorg/gradle/api/Project;",
        ">;",
        "Lgroovy/lang/GroovyObject;"
    }
.end annotation


# static fields
.field private static synthetic $callSiteArray:Ljava/lang/ref/SoftReference; = null

.field private static synthetic $staticClassInfo:Lorg/codehaus/groovy/reflection/ClassInfo; = null

.field private static synthetic $staticClassInfo$:Lorg/codehaus/groovy/reflection/ClassInfo; = null

.field public static final JSON_FILE_NAME:Ljava/lang/String; = "google-services.json"

.field public static final MINIMUM_VERSION:Ljava/lang/String; = "9.0.0"

.field public static final MODULE_CORE:Ljava/lang/String; = "firebase-core"

.field public static final MODULE_GROUP:Ljava/lang/String; = "com.google.android.gms"

.field public static final MODULE_GROUP_FIREBASE:Ljava/lang/String; = "com.google.firebase"

.field public static final MODULE_VERSION:Ljava/lang/String; = "9.0.0"

.field public static transient synthetic __$stMC:Z

.field private static targetVersion:Ljava/lang/String;


# instance fields
.field private transient synthetic metaClass:Lgroovy/lang/MetaClass;


# direct methods
.method private static synthetic $createCallSiteArray()Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;
    .locals 3

    const/16 v0, 0x9d

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {v0}, Lcom/google/gms/googleservices/GoogleServicesPlugin;->$createCallSiteArray_1([Ljava/lang/String;)V

    new-instance v1, Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;

    const-class v2, Lcom/google/gms/googleservices/GoogleServicesPlugin;

    invoke-direct {v1, v2, v0}, Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;-><init>(Ljava/lang/Class;[Ljava/lang/String;)V

    return-object v1
.end method

.method private static synthetic $createCallSiteArray_1([Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "hasPlugin"

    aput-object v1, p0, v0

    const/4 v0, 0x1

    const-string v1, "plugins"

    aput-object v1, p0, v0

    const/4 v0, 0x2

    const-string v1, "hasPlugin"

    aput-object v1, p0, v0

    const/4 v0, 0x3

    const-string v1, "plugins"

    aput-object v1, p0, v0

    const/4 v0, 0x4

    const-string v1, "addDependency"

    aput-object v1, p0, v0

    const/4 v0, 0x5

    const-string v1, "setupPlugin"

    aput-object v1, p0, v0

    const/4 v0, 0x6

    const-string v1, "hasPlugin"

    aput-object v1, p0, v0

    const/4 v0, 0x7

    const-string v1, "plugins"

    aput-object v1, p0, v0

    const/16 v0, 0x8

    const-string v1, "hasPlugin"

    aput-object v1, p0, v0

    const/16 v0, 0x9

    const-string v1, "plugins"

    aput-object v1, p0, v0

    const/16 v0, 0xa

    const-string v1, "addDependency"

    aput-object v1, p0, v0

    const/16 v0, 0xb

    const-string v1, "setupPlugin"

    aput-object v1, p0, v0

    const/16 v0, 0xc

    const-string v1, "showWarningForPluginLocation"

    aput-object v1, p0, v0

    const/16 v0, 0xd

    const-string v1, "withId"

    aput-object v1, p0, v0

    const/16 v0, 0xe

    const-string v1, "plugins"

    aput-object v1, p0, v0

    const/16 v0, 0xf

    const-string v1, "withId"

    aput-object v1, p0, v0

    const/16 v0, 0x10

    const-string v1, "plugins"

    aput-object v1, p0, v0

    const/16 v0, 0x11

    const-string v1, "afterEvaluate"

    aput-object v1, p0, v0

    const/16 v0, 0x12

    const-string v1, "warn"

    aput-object v1, p0, v0

    const/16 v0, 0x13

    const-string v1, "getLogger"

    aput-object v1, p0, v0

    const/16 v0, 0x14

    const-string v1, "split"

    aput-object v1, p0, v0

    const/16 v0, 0x15

    const-string v1, "split"

    aput-object v1, p0, v0

    const/16 v0, 0x16

    const-string v1, "length"

    aput-object v1, p0, v0

    const/16 v0, 0x17

    const-string v1, "length"

    aput-object v1, p0, v0

    const/16 v0, 0x18

    const-string v1, "valueOf"

    aput-object v1, p0, v0

    const/16 v0, 0x19

    const-string v1, "getAt"

    aput-object v1, p0, v0

    const/16 v0, 0x1a

    const-string v1, "valueOf"

    aput-object v1, p0, v0

    const/16 v0, 0x1b

    const-string v1, "getAt"

    aput-object v1, p0, v0

    const/16 v0, 0x1c

    const-string v1, "next"

    aput-object v1, p0, v0

    const/16 v0, 0x1d

    const-string v1, "length"

    aput-object v1, p0, v0

    const/16 v0, 0x1e

    const-string v1, "length"

    aput-object v1, p0, v0

    const/16 v0, 0x1f

    const-string v1, "valueOf"

    aput-object v1, p0, v0

    const/16 v0, 0x20

    const-string v1, "valueOf"

    aput-object v1, p0, v0

    const/16 v0, 0x21

    const-string v1, "length"

    aput-object v1, p0, v0

    const/16 v0, 0x22

    const-string v1, "length"

    aput-object v1, p0, v0

    const/16 v0, 0x23

    const-string v1, "getAt"

    aput-object v1, p0, v0

    const/16 v0, 0x24

    const-string v1, "split"

    aput-object v1, p0, v0

    const/16 v0, 0x25

    const-string v1, "findTargetVersion"

    aput-object v1, p0, v0

    const/16 v0, 0x26

    const-string v1, "checkMinimumVersion"

    aput-object v1, p0, v0

    const/16 v0, 0x27

    const-string v1, "add"

    aput-object v1, p0, v0

    const/16 v0, 0x28

    const-string v1, "dependencies"

    aput-object v1, p0, v0

    const/16 v0, 0x29

    const-string v1, "plus"

    aput-object v1, p0, v0

    const/16 v0, 0x2a

    const-string v1, "plus"

    aput-object v1, p0, v0

    const/16 v0, 0x2b

    const-string v1, "plus"

    aput-object v1, p0, v0

    const/16 v0, 0x2c

    const-string v1, "plus"

    aput-object v1, p0, v0

    const/16 v0, 0x2d

    const-string v1, "<$constructor$>"

    aput-object v1, p0, v0

    const/16 v0, 0x2e

    const-string v1, "plus"

    aput-object v1, p0, v0

    const/16 v0, 0x2f

    const-string v1, "plus"

    aput-object v1, p0, v0

    const/16 v0, 0x30

    const-string v1, "plus"

    aput-object v1, p0, v0

    const/16 v0, 0x31

    const-string v1, "plus"

    aput-object v1, p0, v0

    const/16 v0, 0x32

    const-string v1, "add"

    aput-object v1, p0, v0

    const/16 v0, 0x33

    const-string v1, "dependencies"

    aput-object v1, p0, v0

    const/16 v0, 0x34

    const-string v1, "plus"

    aput-object v1, p0, v0

    const/16 v0, 0x35

    const-string v1, "plus"

    aput-object v1, p0, v0

    const/16 v0, 0x36

    const-string v1, "plus"

    aput-object v1, p0, v0

    const/16 v0, 0x37

    const-string v1, "plus"

    aput-object v1, p0, v0

    const/16 v0, 0x38

    const-string v1, "<$constructor$>"

    aput-object v1, p0, v0

    const/16 v0, 0x39

    const-string v1, "plus"

    aput-object v1, p0, v0

    const/16 v0, 0x3a

    const-string v1, "plus"

    aput-object v1, p0, v0

    const/16 v0, 0x3b

    const-string v1, "plus"

    aput-object v1, p0, v0

    const/16 v0, 0x3c

    const-string v1, "plus"

    aput-object v1, p0, v0

    const/16 v0, 0x3d

    const-string v1, "getConfigurations"

    aput-object v1, p0, v0

    const/16 v0, 0x3e

    const-string v1, "iterator"

    aput-object v1, p0, v0

    const/16 v0, 0x3f

    const-string v1, "getDependencies"

    aput-object v1, p0, v0

    const/16 v0, 0x40

    const-string v1, "iterator"

    aput-object v1, p0, v0

    const/16 v0, 0x41

    const-string v1, "equalsIgnoreCase"

    aput-object v1, p0, v0

    const/16 v0, 0x42

    const-string v1, "getGroup"

    aput-object v1, p0, v0

    const/16 v0, 0x43

    const-string v1, "equalsIgnoreCase"

    aput-object v1, p0, v0

    const/16 v0, 0x44

    const-string v1, "getGroup"

    aput-object v1, p0, v0

    const/16 v0, 0x45

    const-string v1, "getVersion"

    aput-object v1, p0, v0

    const/16 v0, 0x46

    const-string v1, "warn"

    aput-object v1, p0, v0

    const/16 v0, 0x47

    const-string v1, "getLogger"

    aput-object v1, p0, v0

    const/16 v0, 0x48

    const-string v1, "plus"

    aput-object v1, p0, v0

    const/16 v0, 0x49

    const-string v1, "plus"

    aput-object v1, p0, v0

    const/16 v0, 0x4a

    const-string v1, "plus"

    aput-object v1, p0, v0

    const/16 v0, 0x4b

    const-string v1, "plus"

    aput-object v1, p0, v0

    const/16 v0, 0x4c

    const-string v1, "plus"

    aput-object v1, p0, v0

    const/16 v0, 0x4d

    const-string v1, "plus"

    aput-object v1, p0, v0

    const/16 v0, 0x4e

    const-string v1, "showWarningForPluginLocation"

    aput-object v1, p0, v0

    const/16 v0, 0x4f

    const-string v1, "all"

    aput-object v1, p0, v0

    const/16 v0, 0x50

    const-string v1, "libraryVariants"

    aput-object v1, p0, v0

    const/16 v0, 0x51

    const-string v1, "android"

    aput-object v1, p0, v0

    const/16 v0, 0x52

    const-string v1, "all"

    aput-object v1, p0, v0

    const/16 v0, 0x53

    const-string v1, "applicationVariants"

    aput-object v1, p0, v0

    const/16 v0, 0x54

    const-string v1, "android"

    aput-object v1, p0, v0

    const/16 v0, 0x55

    const-string v1, "hasProperty"

    aput-object v1, p0, v0

    const/16 v0, 0x56

    const-string v1, "quiet"

    aput-object v1, p0, v0

    const/16 v0, 0x57

    const-string v1, "getLogger"

    aput-object v1, p0, v0

    const/16 v0, 0x58

    const-string v1, "plus"

    aput-object v1, p0, v0

    const/16 v0, 0x59

    const-string v1, "FirebaseServiceAccountFilePath"

    aput-object v1, p0, v0

    const/16 v0, 0x5a

    const-string v1, "FirebaseServiceAccountFilePath"

    aput-object v1, p0, v0

    const/16 v0, 0x5b

    const-string v1, "error"

    aput-object v1, p0, v0

    const/16 v0, 0x5c

    const-string v1, "getLogger"

    aput-object v1, p0, v0

    const/16 v0, 0x5d

    const-string v1, "plus"

    aput-object v1, p0, v0

    const/16 v0, 0x5e

    const-string v1, "plus"

    aput-object v1, p0, v0

    const/16 v0, 0x5f

    const-string v1, "plus"

    aput-object v1, p0, v0

    const/16 v0, 0x60

    const-string v1, "plus"

    aput-object v1, p0, v0

    const/16 v0, 0x61

    const-string v1, "dirName"

    aput-object v1, p0, v0

    const/16 v0, 0x62

    const-string v1, "split"

    aput-object v1, p0, v0

    const/16 v0, 0x63

    const-string v1, "<$constructor$>"

    aput-object v1, p0, v0

    const/16 v0, 0x64

    const-string v1, "length"

    aput-object v1, p0, v0

    const/16 v0, 0x65

    const-string v1, "getAt"

    aput-object v1, p0, v0

    const/16 v0, 0x66

    const-string v1, "getAt"

    aput-object v1, p0, v0

    const/16 v0, 0x67

    const-string v1, "add"

    aput-object v1, p0, v0

    const/16 v0, 0x68

    const-string v1, "plus"

    aput-object v1, p0, v0

    const/16 v0, 0x69

    const-string v1, "plus"

    aput-object v1, p0, v0

    const/16 v0, 0x6a

    const-string v1, "plus"

    aput-object v1, p0, v0

    const/16 v0, 0x6b

    const-string v1, "add"

    aput-object v1, p0, v0

    const/16 v0, 0x6c

    const-string v1, "plus"

    aput-object v1, p0, v0

    const/16 v0, 0x6d

    const-string v1, "plus"

    aput-object v1, p0, v0

    const/16 v0, 0x6e

    const-string v1, "plus"

    aput-object v1, p0, v0

    const/16 v0, 0x6f

    const-string v1, "add"

    aput-object v1, p0, v0

    const/16 v0, 0x70

    const-string v1, "plus"

    aput-object v1, p0, v0

    const/16 v0, 0x71

    const-string v1, "add"

    aput-object v1, p0, v0

    const/16 v0, 0x72

    const-string v1, "plus"

    aput-object v1, p0, v0

    const/16 v0, 0x73

    const-string v1, "length"

    aput-object v1, p0, v0

    const/16 v0, 0x74

    const-string v1, "add"

    aput-object v1, p0, v0

    const/16 v0, 0x75

    const-string v1, "plus"

    aput-object v1, p0, v0

    const/16 v0, 0x76

    const-string v1, "getAt"

    aput-object v1, p0, v0

    const/16 v0, 0x77

    const-string v1, "length"

    aput-object v1, p0, v0

    const/16 v0, 0x78

    const-string v1, "add"

    aput-object v1, p0, v0

    const/16 v0, 0x79

    const-string v1, "plus"

    aput-object v1, p0, v0

    const/16 v0, 0x7a

    const-string v1, "plus"

    aput-object v1, p0, v0

    const/16 v0, 0x7b

    const-string v1, "plus"

    aput-object v1, p0, v0

    const/16 v0, 0x7c

    const-string v1, "add"

    aput-object v1, p0, v0

    const/16 v0, 0x7d

    const-string v1, "plus"

    aput-object v1, p0, v0

    const/16 v0, 0x7e

    const-string v1, "plus"

    aput-object v1, p0, v0

    const/16 v0, 0x7f

    const-string v1, "plus"

    aput-object v1, p0, v0

    const/16 v0, 0x80

    const-string v1, "add"

    aput-object v1, p0, v0

    const/16 v0, 0x81

    const-string v1, "plus"

    aput-object v1, p0, v0

    const/16 v0, 0x82

    const-string v1, "add"

    aput-object v1, p0, v0

    const/16 v0, 0x83

    const-string v1, "plus"

    aput-object v1, p0, v0

    const/16 v0, 0x84

    const-string v1, "length"

    aput-object v1, p0, v0

    const/16 v0, 0x85

    const-string v1, "add"

    aput-object v1, p0, v0

    const/16 v0, 0x86

    const-string v1, "plus"

    aput-object v1, p0, v0

    const/16 v0, 0x87

    const-string v1, "lineSeparator"

    aput-object v1, p0, v0

    const/16 v0, 0x88

    const-string v1, "iterator"

    aput-object v1, p0, v0

    const/16 v0, 0x89

    const-string v1, "file"

    aput-object v1, p0, v0

    const/16 v0, 0x8a

    const-string v1, "plus"

    aput-object v1, p0, v0

    const/16 v0, 0x8b

    const-string v1, "plus"

    aput-object v1, p0, v0

    const/16 v0, 0x8c

    const-string v1, "plus"

    aput-object v1, p0, v0

    const/16 v0, 0x8d

    const-string v1, "plus"

    aput-object v1, p0, v0

    const/16 v0, 0x8e

    const-string v1, "getPath"

    aput-object v1, p0, v0

    const/16 v0, 0x8f

    const-string v1, "lineSeparator"

    aput-object v1, p0, v0

    const/16 v0, 0x90

    const-string v1, "isFile"

    aput-object v1, p0, v0

    const/16 v0, 0x91

    const-string v1, "file"

    aput-object v1, p0, v0

    const/16 v0, 0x92

    const-string v1, "plus"

    aput-object v1, p0, v0

    const/16 v0, 0x93

    const-string v1, "getPath"

    aput-object v1, p0, v0

    const/16 v0, 0x94

    const-string v1, "file"

    aput-object v1, p0, v0

    const/16 v0, 0x95

    const-string v1, "buildDir"

    aput-object v1, p0, v0

    const/16 v0, 0x96

    const-string v1, "dirName"

    aput-object v1, p0, v0

    const/16 v0, 0x97

    const-string v1, "create"

    aput-object v1, p0, v0

    const/16 v0, 0x98

    const-string v1, "tasks"

    aput-object v1, p0, v0

    const/16 v0, 0x99

    const-string v1, "capitalize"

    aput-object v1, p0, v0

    const/16 v0, 0x9a

    const-string v1, "name"

    aput-object v1, p0, v0

    const/16 v0, 0x9b

    const-string v1, "applicationId"

    aput-object v1, p0, v0

    const/16 v0, 0x9c

    const-string v1, "registerResGeneratingTask"

    aput-object v1, p0, v0

    return-void
.end method

.method private static synthetic $getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;
    .locals 2

    sget-object v0, Lcom/google/gms/googleservices/GoogleServicesPlugin;->$callSiteArray:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/gms/googleservices/GoogleServicesPlugin;->$callSiteArray:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/google/gms/googleservices/GoogleServicesPlugin;->$createCallSiteArray()Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;

    move-result-object v0

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/google/gms/googleservices/GoogleServicesPlugin;->$callSiteArray:Ljava/lang/ref/SoftReference;

    :cond_1
    iget-object v0, v0, Lorg/codehaus/groovy/runtime/callsite/CallSiteArray;->array:[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/gms/googleservices/GoogleServicesPlugin;->$getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    invoke-virtual {p0}, Lcom/google/gms/googleservices/GoogleServicesPlugin;->$getStaticMetaClass()Lgroovy/lang/MetaClass;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gms/googleservices/GoogleServicesPlugin;->metaClass:Lgroovy/lang/MetaClass;

    return-void
.end method

.method private addDependency(Lorg/gradle/api/Project;)V
    .locals 9
    .param p1, "project"    # Lorg/gradle/api/Project;

    .prologue
    invoke-static {}, Lcom/google/gms/googleservices/GoogleServicesPlugin;->$getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    move-result-object v1

    .line 100
    const/16 v0, 0x23

    aget-object v0, v1, v0

    const/16 v2, 0x24

    aget-object v2, v1, v2

    const/16 v3, 0x25

    aget-object v3, v1, v3

    invoke-interface {v3, p0, p1}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callCurrent(Lgroovy/lang/GroovyObject;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "-"

    invoke-interface {v2, v3, v4}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/codehaus/groovy/runtime/typehandling/ShortTypeHandling;->castToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/google/gms/googleservices/GoogleServicesPlugin;->targetVersion:Ljava/lang/String;

    .line 101
    sget-boolean v0, Lcom/google/gms/googleservices/GoogleServicesPlugin;->__$stMC:Z

    if-nez v0, :cond_0

    invoke-static {}, Lorg/codehaus/groovy/runtime/BytecodeInterface8;->disabledStandardMetaClass()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/gms/googleservices/GoogleServicesPlugin;->checkMinimumVersion()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 103
    const/16 v0, 0x32

    aget-object v0, v1, v0

    const/16 v2, 0x33

    aget-object v2, v1, v2

    invoke-interface {v2, p1}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "compile"

    const/16 v4, 0x34

    aget-object v4, v1, v4

    const/16 v5, 0x35

    aget-object v5, v1, v5

    const/16 v6, 0x36

    aget-object v6, v1, v6

    const/16 v7, 0x37

    aget-object v1, v1, v7

    sget-object v7, Lcom/google/gms/googleservices/GoogleServicesPlugin;->MODULE_GROUP_FIREBASE:Ljava/lang/String;

    const-string v8, ":"

    invoke-interface {v1, v7, v8}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v7, Lcom/google/gms/googleservices/GoogleServicesPlugin;->MODULE_CORE:Ljava/lang/String;

    invoke-interface {v6, v1, v7}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v6, ":"

    invoke-interface {v5, v1, v6}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v5, Lcom/google/gms/googleservices/GoogleServicesPlugin;->targetVersion:Ljava/lang/String;

    invoke-interface {v4, v1, v5}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v2, v3, v1}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    :goto_0
    return-void

    .line 101
    :cond_0
    const/16 v0, 0x26

    aget-object v0, v1, v0

    invoke-interface {v0, p0}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callCurrent(Lgroovy/lang/GroovyObject;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/codehaus/groovy/runtime/typehandling/DefaultTypeTransformation;->booleanUnbox(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    const/16 v0, 0x27

    aget-object v0, v1, v0

    const/16 v2, 0x28

    aget-object v2, v1, v2

    invoke-interface {v2, p1}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "compile"

    const/16 v4, 0x29

    aget-object v4, v1, v4

    const/16 v5, 0x2a

    aget-object v5, v1, v5

    const/16 v6, 0x2b

    aget-object v6, v1, v6

    const/16 v7, 0x2c

    aget-object v1, v1, v7

    sget-object v7, Lcom/google/gms/googleservices/GoogleServicesPlugin;->MODULE_GROUP_FIREBASE:Ljava/lang/String;

    const-string v8, ":"

    invoke-interface {v1, v7, v8}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v7, Lcom/google/gms/googleservices/GoogleServicesPlugin;->MODULE_CORE:Ljava/lang/String;

    invoke-interface {v6, v1, v7}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v6, ":"

    invoke-interface {v5, v1, v6}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v5, Lcom/google/gms/googleservices/GoogleServicesPlugin;->targetVersion:Ljava/lang/String;

    invoke-interface {v4, v1, v5}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v2, v3, v1}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 105
    :cond_1
    const/16 v0, 0x2d

    aget-object v0, v1, v0

    const-class v2, Lorg/gradle/api/GradleException;

    const/16 v3, 0x2e

    aget-object v3, v1, v3

    const/16 v4, 0x2f

    aget-object v4, v1, v4

    const/16 v5, 0x30

    aget-object v5, v1, v5

    const/16 v6, 0x31

    aget-object v1, v1, v6

    const-string v6, "Version: "

    sget-object v7, Lcom/google/gms/googleservices/GoogleServicesPlugin;->targetVersion:Ljava/lang/String;

    invoke-interface {v1, v6, v7}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v6, " is lower than the minimum version ("

    invoke-interface {v5, v1, v6}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v5, Lcom/google/gms/googleservices/GoogleServicesPlugin;->MINIMUM_VERSION:Ljava/lang/String;

    invoke-interface {v4, v1, v5}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v4, ") required for google-services plugin."

    invoke-interface {v3, v1, v4}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callConstructor(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    :cond_2
    const/16 v0, 0x38

    aget-object v0, v1, v0

    const-class v2, Lorg/gradle/api/GradleException;

    const/16 v3, 0x39

    aget-object v3, v1, v3

    const/16 v4, 0x3a

    aget-object v4, v1, v4

    const/16 v5, 0x3b

    aget-object v5, v1, v5

    const/16 v6, 0x3c

    aget-object v1, v1, v6

    const-string v6, "Version: "

    sget-object v7, Lcom/google/gms/googleservices/GoogleServicesPlugin;->targetVersion:Ljava/lang/String;

    invoke-interface {v1, v6, v7}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v6, " is lower than the minimum version ("

    invoke-interface {v5, v1, v6}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v5, Lcom/google/gms/googleservices/GoogleServicesPlugin;->MINIMUM_VERSION:Ljava/lang/String;

    invoke-interface {v4, v1, v5}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v4, ") required for google-services plugin."

    invoke-interface {v3, v1, v4}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callConstructor(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method private checkMinimumVersion()Z
    .locals 12

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {}, Lcom/google/gms/googleservices/GoogleServicesPlugin;->$getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    move-result-object v8

    .line 85
    const/16 v7, 0x14

    aget-object v7, v8, v7

    sget-object v9, Lcom/google/gms/googleservices/GoogleServicesPlugin;->targetVersion:Ljava/lang/String;

    const-string v10, "\\."

    invoke-interface {v7, v9, v10}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    const-class v9, [Ljava/lang/String;

    invoke-static {v7, v9}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->castToType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    .line 86
    .local v4, "subTargetVersions":[Ljava/lang/String;
    const/16 v7, 0x15

    aget-object v7, v8, v7

    sget-object v9, Lcom/google/gms/googleservices/GoogleServicesPlugin;->MINIMUM_VERSION:Ljava/lang/String;

    const-string v10, "\\."

    invoke-interface {v7, v9, v10}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    const-class v9, [Ljava/lang/String;

    invoke-static {v7, v9}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->castToType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 87
    .local v2, "subMinimumVersions":[Ljava/lang/String;
    invoke-static {}, Lorg/codehaus/groovy/runtime/BytecodeInterface8;->isOrigInt()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-static {}, Lorg/codehaus/groovy/runtime/BytecodeInterface8;->isOrigZ()Z

    move-result v7

    if-eqz v7, :cond_1

    sget-boolean v7, Lcom/google/gms/googleservices/GoogleServicesPlugin;->__$stMC:Z

    if-nez v7, :cond_1

    invoke-static {}, Lorg/codehaus/groovy/runtime/BytecodeInterface8;->disabledStandardMetaClass()Z

    move-result v7

    if-nez v7, :cond_1

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v9, 0x1d

    aget-object v9, v8, v9

    invoke-interface {v9, v4}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v7, v9}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->compareLessThan(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v9, 0x1e

    aget-object v9, v8, v9

    invoke-interface {v9, v2}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v7, v9}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->compareLessThan(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    move v7, v5

    :goto_1
    if-eqz v7, :cond_7

    .line 88
    const/16 v7, 0x1f

    aget-object v7, v8, v7

    const-class v9, Ljava/lang/Integer;

    invoke-static {v4, v0}, Lorg/codehaus/groovy/runtime/BytecodeInterface8;->objectArrayGet([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v7, v9, v10}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    const-class v9, Ljava/lang/Integer;

    invoke-static {v7, v9}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->castToType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 89
    .local v3, "subTargetVersion":Ljava/lang/Integer;
    const/16 v7, 0x20

    aget-object v7, v8, v7

    const-class v9, Ljava/lang/Integer;

    invoke-static {v2, v0}, Lorg/codehaus/groovy/runtime/BytecodeInterface8;->objectArrayGet([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v7, v9, v10}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    const-class v9, Ljava/lang/Integer;

    invoke-static {v7, v9}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->castToType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 90
    .local v1, "subMinimumVersion":Ljava/lang/Integer;
    invoke-static {v3, v1}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->compareGreaterThan(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 96
    .end local v1    # "subMinimumVersion":Ljava/lang/Integer;
    .end local v3    # "subTargetVersion":Ljava/lang/Integer;
    :cond_0
    :goto_2
    return v5

    .line 87
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v9, 0x16

    aget-object v9, v8, v9

    invoke-interface {v9, v4}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v7, v9}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->compareLessThan(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v9, 0x17

    aget-object v9, v8, v9

    invoke-interface {v9, v2}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v7, v9}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->compareLessThan(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    move v7, v5

    :goto_4
    if-eqz v7, :cond_7

    .line 88
    const/16 v7, 0x18

    aget-object v7, v8, v7

    const-class v9, Ljava/lang/Integer;

    const/16 v10, 0x19

    aget-object v10, v8, v10

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v4, v11}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v7, v9, v10}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    const-class v9, Ljava/lang/Integer;

    invoke-static {v7, v9}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->castToType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 89
    .restart local v3    # "subTargetVersion":Ljava/lang/Integer;
    const/16 v7, 0x1a

    aget-object v7, v8, v7

    const-class v9, Ljava/lang/Integer;

    const/16 v10, 0x1b

    aget-object v10, v8, v10

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v2, v11}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v7, v9, v10}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    const-class v9, Ljava/lang/Integer;

    invoke-static {v7, v9}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->castToType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 90
    .restart local v1    # "subMinimumVersion":Ljava/lang/Integer;
    invoke-static {v3, v1}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->compareGreaterThan(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 92
    invoke-static {v3, v1}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->compareLessThan(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    move v5, v6

    .line 93
    goto :goto_2

    .end local v1    # "subMinimumVersion":Ljava/lang/Integer;
    .end local v3    # "subTargetVersion":Ljava/lang/Integer;
    :cond_2
    move v7, v6

    .line 87
    goto :goto_4

    .line 93
    .restart local v1    # "subMinimumVersion":Ljava/lang/Integer;
    .restart local v3    # "subTargetVersion":Ljava/lang/Integer;
    :cond_3
    const/16 v7, 0x1c

    aget-object v7, v8, v7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v7, v9}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lorg/codehaus/groovy/runtime/typehandling/DefaultTypeTransformation;->intUnbox(Ljava/lang/Object;)I

    move-result v0

    goto/16 :goto_3

    .end local v1    # "subMinimumVersion":Ljava/lang/Integer;
    .end local v3    # "subTargetVersion":Ljava/lang/Integer;
    :cond_4
    move v7, v6

    .line 87
    goto/16 :goto_1

    .line 92
    .restart local v1    # "subMinimumVersion":Ljava/lang/Integer;
    .restart local v3    # "subTargetVersion":Ljava/lang/Integer;
    :cond_5
    invoke-static {v3, v1}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->compareLessThan(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    move v5, v6

    .line 93
    goto/16 :goto_2

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 96
    .end local v1    # "subMinimumVersion":Ljava/lang/Integer;
    .end local v3    # "subTargetVersion":Ljava/lang/Integer;
    :cond_7
    const/16 v5, 0x21

    aget-object v5, v8, v5

    invoke-interface {v5, v4}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const/16 v6, 0x22

    aget-object v6, v8, v6

    invoke-interface {v6, v2}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->compareGreaterThanEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    goto/16 :goto_2
.end method

.method private findServiceAccountFile(Lorg/gradle/api/Project;)Ljava/lang/String;
    .locals 9
    .param p1, "project"    # Lorg/gradle/api/Project;

    .prologue
    invoke-static {}, Lcom/google/gms/googleservices/GoogleServicesPlugin;->$getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    move-result-object v1

    .line 152
    const/4 v0, 0x0

    .line 153
    .local v0, "serviceAccountPath":Ljava/lang/Object;
    const/16 v2, 0x55

    aget-object v2, v1, v2

    const-string v3, "FirebaseServiceAccountFilePath"

    invoke-interface {v2, p1, v3}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/codehaus/groovy/runtime/typehandling/DefaultTypeTransformation;->booleanUnbox(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 154
    const/16 v2, 0x56

    aget-object v2, v1, v2

    const/16 v3, 0x57

    aget-object v3, v1, v3

    invoke-interface {v3, p1}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x58

    aget-object v4, v1, v4

    const-string v5, "Using the service account file path at: "

    const/16 v6, 0x59

    aget-object v6, v1, v6

    invoke-interface {v6, p1}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    const/16 v2, 0x5a

    aget-object v1, v1, v2

    invoke-interface {v1, p1}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 164
    .end local v0    # "serviceAccountPath":Ljava/lang/Object;
    :goto_0
    invoke-static {v0}, Lorg/codehaus/groovy/runtime/typehandling/ShortTypeHandling;->castToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 158
    .restart local v0    # "serviceAccountPath":Ljava/lang/Object;
    :cond_0
    const/16 v2, 0x5b

    aget-object v2, v1, v2

    const/16 v3, 0x5c

    aget-object v3, v1, v3

    invoke-interface {v3, p1}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x5d

    aget-object v4, v1, v4

    .line 161
    const/16 v5, 0x5e

    aget-object v5, v1, v5

    .line 160
    const/16 v6, 0x5f

    aget-object v6, v1, v6

    .line 159
    const/16 v7, 0x60

    aget-object v1, v1, v7

    const-string v7, "Service account file path has not been"

    const-string v8, " defined! Please add \"project.extensions."

    invoke-interface {v1, v7, v8}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v7, "add(\"FirebaseServiceAccountFilePath\","

    invoke-interface {v6, v1, v7}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v6, " \"FILE_PATH\");\" to the app\'s build.gradle file to upload the"

    invoke-interface {v5, v1, v6}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v5, " Proguard mapping file"

    invoke-interface {v4, v1, v5}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private findTargetVersion(Lorg/gradle/api/Project;)Ljava/lang/String;
    .locals 17
    .param p1, "project"    # Lorg/gradle/api/Project;

    .prologue
    invoke-static {}, Lcom/google/gms/googleservices/GoogleServicesPlugin;->$getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    move-result-object v9

    .line 111
    const/16 v6, 0x3d

    aget-object v6, v9, v6

    move-object/from16 v0, p1

    invoke-interface {v6, v0}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 112
    .local v3, "configurations":Ljava/lang/Object;
    const/4 v6, 0x0

    invoke-static {v3, v6}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->compareEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x0

    invoke-static {v6}, Lorg/codehaus/groovy/runtime/typehandling/ShortTypeHandling;->castToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 136
    :goto_0
    return-object v6

    .line 113
    :cond_0
    const/4 v2, 0x0

    .local v2, "configuration":Ljava/lang/Object;
    const/16 v6, 0x3e

    aget-object v6, v9, v6

    invoke-interface {v6, v3}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    const-class v7, Ljava/util/Iterator;

    invoke-static {v6, v7}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->castToType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Iterator;

    .end local v2    # "configuration":Ljava/lang/Object;
    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 114
    .restart local v2    # "configuration":Ljava/lang/Object;
    const/4 v7, 0x0

    invoke-static {v2, v7}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->compareEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 115
    const/16 v7, 0x3f

    aget-object v7, v9, v7

    invoke-interface {v7, v2}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 116
    .local v4, "dependencies":Ljava/lang/Object;
    const/4 v7, 0x0

    invoke-static {v4, v7}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->compareEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 117
    const/4 v5, 0x0

    .local v5, "dependency":Ljava/lang/Object;
    const/16 v7, 0x40

    aget-object v7, v9, v7

    invoke-interface {v7, v4}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    const-class v8, Ljava/util/Iterator;

    invoke-static {v7, v8}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->castToType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Iterator;

    .end local v5    # "dependency":Ljava/lang/Object;
    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 118
    .restart local v5    # "dependency":Ljava/lang/Object;
    const/4 v8, 0x0

    invoke-static {v5, v8}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->compareEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 119
    const/16 v8, 0x41

    aget-object v8, v9, v8

    sget-object v10, Lcom/google/gms/googleservices/GoogleServicesPlugin;->MODULE_GROUP:Ljava/lang/String;

    const/16 v11, 0x42

    aget-object v11, v9, v11

    invoke-interface {v11, v5}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v8, v10, v11}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Lorg/codehaus/groovy/runtime/typehandling/DefaultTypeTransformation;->booleanUnbox(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 120
    const/16 v8, 0x43

    aget-object v8, v9, v8

    sget-object v10, Lcom/google/gms/googleservices/GoogleServicesPlugin;->MODULE_GROUP_FIREBASE:Ljava/lang/String;

    const/16 v11, 0x44

    aget-object v11, v9, v11

    invoke-interface {v11, v5}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v8, v10, v11}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Lorg/codehaus/groovy/runtime/typehandling/DefaultTypeTransformation;->booleanUnbox(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    :cond_3
    const/4 v8, 0x1

    :goto_1
    if-eqz v8, :cond_2

    .line 122
    const/16 v6, 0x45

    aget-object v6, v9, v6

    invoke-interface {v6, v5}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lorg/codehaus/groovy/runtime/typehandling/ShortTypeHandling;->castToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    goto/16 :goto_0

    .line 120
    :cond_4
    const/4 v8, 0x0

    goto :goto_1

    .line 130
    .end local v2    # "configuration":Ljava/lang/Object;
    .end local v4    # "dependencies":Ljava/lang/Object;
    .end local v5    # "dependency":Ljava/lang/Object;
    :cond_5
    const/16 v6, 0x46

    aget-object v6, v9, v6

    const/16 v7, 0x47

    aget-object v7, v9, v7

    move-object/from16 v0, p1

    invoke-interface {v7, v0}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 131
    const/16 v8, 0x48

    aget-object v8, v9, v8

    .line 133
    const/16 v10, 0x49

    aget-object v10, v9, v10

    .line 132
    const/16 v11, 0x4a

    aget-object v11, v9, v11

    const/16 v12, 0x4b

    aget-object v12, v9, v12

    const/16 v13, 0x4c

    aget-object v13, v9, v13

    .line 131
    const/16 v14, 0x4d

    aget-object v14, v9, v14

    const-string v15, "google-services plugin could not detect any version for "

    sget-object v16, Lcom/google/gms/googleservices/GoogleServicesPlugin;->MODULE_GROUP:Ljava/lang/String;

    invoke-interface/range {v14 .. v16}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    const-string v15, " or "

    invoke-interface {v13, v14, v15}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    sget-object v14, Lcom/google/gms/googleservices/GoogleServicesPlugin;->MODULE_GROUP_FIREBASE:Ljava/lang/String;

    invoke-interface {v12, v13, v14}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    const-string v13, ", default version: "

    invoke-interface {v11, v12, v13}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    sget-object v12, Lcom/google/gms/googleservices/GoogleServicesPlugin;->MODULE_VERSION:Ljava/lang/String;

    invoke-interface {v10, v11, v12}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    const-string v11, " will be used."

    invoke-interface {v8, v10, v11}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    const/16 v6, 0x4e

    aget-object v6, v9, v6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-interface {v6, v0, v1}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callCurrent(Lgroovy/lang/GroovyObject;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v6, Lcom/google/gms/googleservices/GoogleServicesPlugin;->MODULE_VERSION:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method private static handleVariant(Lorg/gradle/api/Project;Ljava/lang/Object;)V
    .locals 21
    .param p0, "project"    # Lorg/gradle/api/Project;
    .param p1, "variant"    # Ljava/lang/Object;

    .prologue
    invoke-static {}, Lcom/google/gms/googleservices/GoogleServicesPlugin;->$getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    move-result-object v14

    .line 170
    const/4 v8, 0x0

    .line 172
    .local v8, "quickstartFile":Ljava/io/File;
    new-instance v13, Lorg/codehaus/groovy/runtime/GStringImpl;

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const/16 v17, 0x61

    aget-object v17, v14, v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const-string v18, ""

    aput-object v18, v16, v17

    const/16 v17, 0x1

    const-string v18, ""

    aput-object v18, v16, v17

    move-object/from16 v0, v16

    invoke-direct {v13, v15, v0}, Lorg/codehaus/groovy/runtime/GStringImpl;-><init>([Ljava/lang/Object;[Ljava/lang/String;)V

    invoke-static {v13}, Lorg/codehaus/groovy/runtime/typehandling/ShortTypeHandling;->castToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 173
    .local v11, "variantName":Ljava/lang/String;
    const/16 v13, 0x62

    aget-object v13, v14, v13

    const-string v15, "/"

    invoke-interface {v13, v11, v15}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    const-class v15, [Ljava/lang/String;

    invoke-static {v13, v15}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->castToType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Ljava/lang/String;

    .line 175
    .local v12, "variantTokens":[Ljava/lang/String;
    const/16 v13, 0x63

    aget-object v13, v14, v13

    const-class v15, Ljava/util/ArrayList;

    invoke-interface {v13, v15}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callConstructor(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    const-class v15, Ljava/util/List;

    invoke-static {v13, v15}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->castToType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 177
    .local v3, "fileLocation":Ljava/util/List;
    invoke-static {}, Lorg/codehaus/groovy/runtime/BytecodeInterface8;->isOrigInt()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-static {}, Lorg/codehaus/groovy/runtime/BytecodeInterface8;->isOrigZ()Z

    move-result v13

    if-eqz v13, :cond_4

    sget-boolean v13, Lcom/google/gms/googleservices/GoogleServicesPlugin;->__$stMC:Z

    if-nez v13, :cond_4

    invoke-static {}, Lorg/codehaus/groovy/runtime/BytecodeInterface8;->disabledStandardMetaClass()Z

    move-result v13

    if-nez v13, :cond_4

    const/16 v13, 0x77

    aget-object v13, v14, v13

    invoke-interface {v13, v12}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    const/4 v15, 0x2

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-static {v13, v15}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->compareEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 179
    const/4 v13, 0x0

    invoke-static {v12, v13}, Lorg/codehaus/groovy/runtime/BytecodeInterface8;->objectArrayGet([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v13

    invoke-static {v13}, Lorg/codehaus/groovy/runtime/typehandling/ShortTypeHandling;->castToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 180
    .local v4, "flavorName":Ljava/lang/String;
    const/4 v13, 0x1

    invoke-static {v12, v13}, Lorg/codehaus/groovy/runtime/BytecodeInterface8;->objectArrayGet([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v13

    invoke-static {v13}, Lorg/codehaus/groovy/runtime/typehandling/ShortTypeHandling;->castToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 181
    .local v2, "buildType":Ljava/lang/String;
    const/16 v13, 0x78

    aget-object v13, v14, v13

    const/16 v15, 0x79

    aget-object v15, v14, v15

    const/16 v16, 0x7a

    aget-object v16, v14, v16

    const/16 v17, 0x7b

    aget-object v17, v14, v17

    const-string v18, "src/"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v0, v1, v4}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    const-string v18, "/"

    invoke-interface/range {v16 .. v18}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v15, v0, v2}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    invoke-interface {v13, v3, v15}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    const/16 v13, 0x7c

    aget-object v13, v14, v13

    const/16 v15, 0x7d

    aget-object v15, v14, v15

    const/16 v16, 0x7e

    aget-object v16, v14, v16

    const/16 v17, 0x7f

    aget-object v17, v14, v17

    const-string v18, "src/"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v0, v1, v2}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    const-string v18, "/"

    invoke-interface/range {v16 .. v18}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v15, v0, v4}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    invoke-interface {v13, v3, v15}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    const/16 v13, 0x80

    aget-object v13, v14, v13

    const/16 v15, 0x81

    aget-object v15, v14, v15

    const-string v16, "src/"

    move-object/from16 v0, v16

    invoke-interface {v15, v0, v4}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    invoke-interface {v13, v3, v15}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    const/16 v13, 0x82

    aget-object v13, v14, v13

    const/16 v15, 0x83

    aget-object v15, v14, v15

    const-string v16, "src/"

    move-object/from16 v0, v16

    invoke-interface {v15, v0, v2}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    invoke-interface {v13, v3, v15}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    .end local v2    # "buildType":Ljava/lang/String;
    .end local v4    # "flavorName":Ljava/lang/String;
    :cond_0
    :goto_0
    const/16 v13, 0x87

    aget-object v13, v14, v13

    const-class v15, Ljava/lang/System;

    invoke-interface {v13, v15}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-static {v13}, Lorg/codehaus/groovy/runtime/typehandling/ShortTypeHandling;->castToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 191
    .local v9, "searchedLocation":Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "location":Ljava/lang/String;
    const/16 v13, 0x88

    aget-object v13, v14, v13

    invoke-interface {v13, v3}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    const-class v15, Ljava/util/Iterator;

    invoke-static {v13, v15}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->castToType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Iterator;

    :cond_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    invoke-static {v15}, Lorg/codehaus/groovy/runtime/typehandling/ShortTypeHandling;->castToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .end local v6    # "location":Ljava/lang/String;
    check-cast v6, Ljava/lang/String;

    .line 192
    .restart local v6    # "location":Ljava/lang/String;
    const/16 v15, 0x89

    aget-object v15, v14, v15

    const/16 v16, 0x8a

    aget-object v16, v14, v16

    const/16 v17, 0x8b

    aget-object v17, v14, v17

    const-string v18, "/"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v0, v6, v1}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    sget-object v18, Lcom/google/gms/googleservices/GoogleServicesPlugin;->JSON_FILE_NAME:Ljava/lang/String;

    invoke-interface/range {v16 .. v18}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-interface {v15, v0, v1}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    const-class v16, Ljava/io/File;

    invoke-static/range {v15 .. v16}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->castToType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/File;

    .line 193
    .local v5, "jsonFile":Ljava/io/File;
    const/16 v15, 0x8c

    aget-object v15, v14, v15

    const/16 v16, 0x8d

    aget-object v16, v14, v16

    const/16 v17, 0x8e

    aget-object v17, v14, v17

    move-object/from16 v0, v17

    invoke-interface {v0, v5}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v0, v9, v1}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    const/16 v17, 0x8f

    aget-object v17, v14, v17

    const-class v18, Ljava/lang/System;

    invoke-interface/range {v17 .. v18}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    invoke-interface/range {v15 .. v17}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    invoke-static {v15}, Lorg/codehaus/groovy/runtime/typehandling/ShortTypeHandling;->castToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .end local v9    # "searchedLocation":Ljava/lang/String;
    check-cast v9, Ljava/lang/String;

    .line 194
    .restart local v9    # "searchedLocation":Ljava/lang/String;
    const/16 v15, 0x90

    aget-object v15, v14, v15

    invoke-interface {v15, v5}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    invoke-static {v15}, Lorg/codehaus/groovy/runtime/typehandling/DefaultTypeTransformation;->booleanUnbox(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 195
    move-object v8, v5

    .line 200
    .end local v5    # "jsonFile":Ljava/io/File;
    :cond_2
    const/4 v13, 0x0

    invoke-static {v8, v13}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->compareEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 201
    const/16 v13, 0x91

    aget-object v13, v14, v13

    sget-object v15, Lcom/google/gms/googleservices/GoogleServicesPlugin;->JSON_FILE_NAME:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-interface {v13, v0, v15}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    const-class v15, Ljava/io/File;

    invoke-static {v13, v15}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->castToType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "quickstartFile":Ljava/io/File;
    check-cast v8, Ljava/io/File;

    .line 202
    .restart local v8    # "quickstartFile":Ljava/io/File;
    const/16 v13, 0x92

    aget-object v13, v14, v13

    const/16 v15, 0x93

    aget-object v15, v14, v15

    invoke-interface {v15, v8}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    invoke-interface {v13, v9, v15}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-static {v13}, Lorg/codehaus/groovy/runtime/typehandling/ShortTypeHandling;->castToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .end local v9    # "searchedLocation":Ljava/lang/String;
    check-cast v9, Ljava/lang/String;

    .line 205
    .restart local v9    # "searchedLocation":Ljava/lang/String;
    :cond_3
    const/16 v13, 0x94

    aget-object v13, v14, v13

    new-instance v15, Lorg/codehaus/groovy/runtime/GStringImpl;

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x95

    aget-object v18, v14, v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    const/16 v18, 0x96

    aget-object v18, v14, v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x3

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const-string v19, ""

    aput-object v19, v17, v18

    const/16 v18, 0x1

    const-string v19, "/generated/res/google-services/"

    aput-object v19, v17, v18

    const/16 v18, 0x2

    const-string v19, ""

    aput-object v19, v17, v18

    invoke-direct/range {v15 .. v17}, Lorg/codehaus/groovy/runtime/GStringImpl;-><init>([Ljava/lang/Object;[Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-interface {v13, v0, v15}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    const-class v15, Ljava/io/File;

    invoke-static {v13, v15}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->castToType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/io/File;

    .line 208
    .local v7, "outputDir":Ljava/io/File;
    const/16 v13, 0x97

    aget-object v13, v14, v13

    const/16 v15, 0x98

    aget-object v15, v14, v15

    move-object/from16 v0, p0

    invoke-interface {v15, v0}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    new-instance v16, Lorg/codehaus/groovy/runtime/GStringImpl;

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    .line 209
    const/16 v19, 0x99

    aget-object v19, v14, v19

    const/16 v20, 0x9a

    aget-object v20, v14, v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    invoke-interface/range {v19 .. v20}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const-string v20, "process"

    aput-object v20, v18, v19

    const/16 v19, 0x1

    const-string v20, "GoogleServices"

    aput-object v20, v18, v19

    invoke-direct/range {v16 .. v18}, Lorg/codehaus/groovy/runtime/GStringImpl;-><init>([Ljava/lang/Object;[Ljava/lang/String;)V

    const-class v17, Lcom/google/gms/googleservices/GoogleServicesTask;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v13, v15, v0, v1}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    const-class v15, Lcom/google/gms/googleservices/GoogleServicesTask;

    invoke-static {v13, v15}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->castToType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/gms/googleservices/GoogleServicesTask;

    .line 212
    .local v10, "task":Lcom/google/gms/googleservices/GoogleServicesTask;
    const/4 v15, 0x0

    const-string v13, "quickstartFile"

    check-cast v13, Ljava/lang/String;

    invoke-static {v8, v15, v10, v13}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->setProperty(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)V

    .line 213
    const/4 v15, 0x0

    const-string v13, "intermediateDir"

    check-cast v13, Ljava/lang/String;

    invoke-static {v7, v15, v10, v13}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->setProperty(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)V

    .line 214
    const/16 v13, 0x9b

    aget-object v13, v14, v13

    move-object/from16 v0, p1

    invoke-interface {v13, v0}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    const/16 v16, 0x0

    const-string v13, "packageName"

    check-cast v13, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-static {v15, v0, v10, v13}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->setProperty(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)V

    .line 215
    sget-object v15, Lcom/google/gms/googleservices/GoogleServicesPlugin;->MODULE_GROUP:Ljava/lang/String;

    const/16 v16, 0x0

    const-string v13, "moduleGroup"

    check-cast v13, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-static {v15, v0, v10, v13}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->setProperty(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)V

    .line 217
    sget-object v15, Lcom/google/gms/googleservices/GoogleServicesPlugin;->targetVersion:Ljava/lang/String;

    const/16 v16, 0x0

    const-string v13, "moduleVersion"

    check-cast v13, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-static {v15, v0, v10, v13}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->setProperty(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)V

    .line 218
    const/16 v13, 0x9c

    aget-object v13, v14, v13

    move-object/from16 v0, p1

    invoke-interface {v13, v0, v10, v7}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    const/4 v14, 0x0

    const-string v13, "searchedLocation"

    check-cast v13, Ljava/lang/String;

    invoke-static {v9, v14, v10, v13}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->setProperty(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 177
    .end local v6    # "location":Ljava/lang/String;
    .end local v7    # "outputDir":Ljava/io/File;
    .end local v9    # "searchedLocation":Ljava/lang/String;
    .end local v10    # "task":Lcom/google/gms/googleservices/GoogleServicesTask;
    :cond_4
    const/16 v13, 0x64

    aget-object v13, v14, v13

    invoke-interface {v13, v12}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    const/4 v15, 0x2

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-static {v13, v15}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->compareEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 179
    const/16 v13, 0x65

    aget-object v13, v14, v13

    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v13, v12, v15}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-static {v13}, Lorg/codehaus/groovy/runtime/typehandling/ShortTypeHandling;->castToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 180
    .restart local v4    # "flavorName":Ljava/lang/String;
    const/16 v13, 0x66

    aget-object v13, v14, v13

    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v13, v12, v15}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-static {v13}, Lorg/codehaus/groovy/runtime/typehandling/ShortTypeHandling;->castToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 181
    .restart local v2    # "buildType":Ljava/lang/String;
    const/16 v13, 0x67

    aget-object v13, v14, v13

    const/16 v15, 0x68

    aget-object v15, v14, v15

    const/16 v16, 0x69

    aget-object v16, v14, v16

    const/16 v17, 0x6a

    aget-object v17, v14, v17

    const-string v18, "src/"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v0, v1, v4}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    const-string v18, "/"

    invoke-interface/range {v16 .. v18}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v15, v0, v2}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    invoke-interface {v13, v3, v15}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    const/16 v13, 0x6b

    aget-object v13, v14, v13

    const/16 v15, 0x6c

    aget-object v15, v14, v15

    const/16 v16, 0x6d

    aget-object v16, v14, v16

    const/16 v17, 0x6e

    aget-object v17, v14, v17

    const-string v18, "src/"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v0, v1, v2}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    const-string v18, "/"

    invoke-interface/range {v16 .. v18}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v15, v0, v4}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    invoke-interface {v13, v3, v15}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    const/16 v13, 0x6f

    aget-object v13, v14, v13

    const/16 v15, 0x70

    aget-object v15, v14, v15

    const-string v16, "src/"

    move-object/from16 v0, v16

    invoke-interface {v15, v0, v4}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    invoke-interface {v13, v3, v15}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    const/16 v13, 0x71

    aget-object v13, v14, v13

    const/16 v15, 0x72

    aget-object v15, v14, v15

    const-string v16, "src/"

    move-object/from16 v0, v16

    invoke-interface {v15, v0, v2}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    invoke-interface {v13, v3, v15}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 185
    .end local v2    # "buildType":Ljava/lang/String;
    .end local v4    # "flavorName":Ljava/lang/String;
    :cond_5
    const/16 v13, 0x73

    aget-object v13, v14, v13

    invoke-interface {v13, v12}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-static {v13, v15}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->compareEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 187
    const/16 v13, 0x74

    aget-object v13, v14, v13

    const/16 v15, 0x75

    aget-object v15, v14, v15

    const-string v16, "src/"

    const/16 v17, 0x76

    aget-object v17, v14, v17

    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v0, v12, v1}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    invoke-interface/range {v15 .. v17}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    invoke-interface {v13, v3, v15}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 185
    :cond_6
    const/16 v13, 0x84

    aget-object v13, v14, v13

    invoke-interface {v13, v12}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-static {v13, v15}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->compareEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 187
    const/16 v13, 0x85

    aget-object v13, v14, v13

    const/16 v15, 0x86

    aget-object v15, v14, v15

    const-string v16, "src/"

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-static {v12, v0}, Lorg/codehaus/groovy/runtime/BytecodeInterface8;->objectArrayGet([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v17

    invoke-interface/range {v15 .. v17}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    invoke-interface {v13, v3, v15}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method private setupPlugin(Lorg/gradle/api/Project;Z)V
    .locals 5
    .param p1, "project"    # Lorg/gradle/api/Project;
    .param p2, "isLibrary"    # Z

    .prologue
    new-instance v0, Lgroovy/lang/Reference;

    invoke-direct {v0, p1}, Lgroovy/lang/Reference;-><init>(Ljava/lang/Object;)V

    .local v0, "project":Lgroovy/lang/Reference;
    invoke-static {}, Lcom/google/gms/googleservices/GoogleServicesPlugin;->$getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    .end local p1    # "project":Lorg/gradle/api/Project;
    move-result-object v1

    .line 140
    if-eqz p2, :cond_0

    .line 141
    const/16 v2, 0x4f

    aget-object v2, v1, v2

    const/16 v3, 0x50

    aget-object v3, v1, v3

    const/16 v4, 0x51

    aget-object v4, v1, v4

    invoke-virtual {v0}, Lgroovy/lang/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/gradle/api/Project;

    invoke-interface {v4, v1}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v3, v1}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    new-instance v3, Lcom/google/gms/googleservices/GoogleServicesPlugin$_setupPlugin_closure4;

    invoke-direct {v3, p0, p0, v0}, Lcom/google/gms/googleservices/GoogleServicesPlugin$_setupPlugin_closure4;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lgroovy/lang/Reference;)V

    invoke-interface {v2, v1, v3}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    :goto_0
    return-void

    :cond_0
    const/16 v2, 0x52

    aget-object v2, v1, v2

    const/16 v3, 0x53

    aget-object v3, v1, v3

    const/16 v4, 0x54

    aget-object v4, v1, v4

    invoke-virtual {v0}, Lgroovy/lang/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/gradle/api/Project;

    invoke-interface {v4, v1}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v3, v1}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    new-instance v3, Lcom/google/gms/googleservices/GoogleServicesPlugin$_setupPlugin_closure5;

    invoke-direct {v3, p0, p0, v0}, Lcom/google/gms/googleservices/GoogleServicesPlugin$_setupPlugin_closure5;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lgroovy/lang/Reference;)V

    invoke-interface {v2, v1, v3}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private showWarningForPluginLocation(Lorg/gradle/api/Project;)V
    .locals 3
    .param p1, "project"    # Lorg/gradle/api/Project;

    .prologue
    invoke-static {}, Lcom/google/gms/googleservices/GoogleServicesPlugin;->$getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    move-result-object v0

    .line 80
    const/16 v1, 0x12

    aget-object v1, v0, v1

    const/16 v2, 0x13

    aget-object v0, v0, v2

    invoke-interface {v0, p1}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "please apply google-services plugin at the bottom of the build file."

    invoke-interface {v1, v0, v2}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected synthetic $getStaticMetaClass()Lgroovy/lang/MetaClass;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/google/gms/googleservices/GoogleServicesPlugin;

    if-eq v0, v1, :cond_0

    invoke-static {p0}, Lorg/codehaus/groovy/runtime/ScriptBytecodeAdapter;->initMetaClass(Ljava/lang/Object;)Lgroovy/lang/MetaClass;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/google/gms/googleservices/GoogleServicesPlugin;->$staticClassInfo:Lorg/codehaus/groovy/reflection/ClassInfo;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/codehaus/groovy/reflection/ClassInfo;->getClassInfo(Ljava/lang/Class;)Lorg/codehaus/groovy/reflection/ClassInfo;

    move-result-object v0

    sput-object v0, Lcom/google/gms/googleservices/GoogleServicesPlugin;->$staticClassInfo:Lorg/codehaus/groovy/reflection/ClassInfo;

    :cond_1
    invoke-virtual {v0}, Lorg/codehaus/groovy/reflection/ClassInfo;->getMetaClass()Lgroovy/lang/MetaClass;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lorg/gradle/api/Project;

    invoke-virtual {p0, p1}, Lcom/google/gms/googleservices/GoogleServicesPlugin;->apply(Lorg/gradle/api/Project;)V

    return-void
.end method

.method public apply(Lorg/gradle/api/Project;)V
    .locals 7
    .param p1, "project"    # Lorg/gradle/api/Project;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lgroovy/lang/Reference;

    invoke-direct {v0, p1}, Lgroovy/lang/Reference;-><init>(Ljava/lang/Object;)V

    .local v0, "project":Lgroovy/lang/Reference;
    invoke-static {}, Lcom/google/gms/googleservices/GoogleServicesPlugin;->$getCallSiteArray()[Lorg/codehaus/groovy/runtime/callsite/CallSite;

    .end local p1    # "project":Lorg/gradle/api/Project;
    move-result-object v4

    .line 43
    aget-object v5, v4, v2

    aget-object v6, v4, v3

    invoke-virtual {v0}, Lgroovy/lang/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/gradle/api/Project;

    invoke-interface {v6, v1}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v6, "android"

    invoke-interface {v5, v1, v6}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/codehaus/groovy/runtime/typehandling/DefaultTypeTransformation;->booleanUnbox(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 44
    const/4 v1, 0x2

    aget-object v5, v4, v1

    const/4 v1, 0x3

    aget-object v6, v4, v1

    invoke-virtual {v0}, Lgroovy/lang/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/gradle/api/Project;

    invoke-interface {v6, v1}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v6, "com.android.application"

    invoke-interface {v5, v1, v6}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/codehaus/groovy/runtime/typehandling/DefaultTypeTransformation;->booleanUnbox(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move v1, v3

    :goto_0
    if-eqz v1, :cond_2

    .line 47
    const/4 v1, 0x4

    aget-object v3, v4, v1

    invoke-virtual {v0}, Lgroovy/lang/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/gradle/api/Project;

    invoke-interface {v3, p0, v1}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callCurrent(Lgroovy/lang/GroovyObject;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    const/4 v1, 0x5

    aget-object v3, v4, v1

    invoke-virtual {v0}, Lgroovy/lang/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/gradle/api/Project;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v3, p0, v1, v2}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callCurrent(Lgroovy/lang/GroovyObject;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    :goto_1
    return-void

    :cond_1
    move v1, v2

    .line 44
    goto :goto_0

    .line 51
    :cond_2
    const/4 v1, 0x6

    aget-object v5, v4, v1

    const/4 v1, 0x7

    aget-object v6, v4, v1

    invoke-virtual {v0}, Lgroovy/lang/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/gradle/api/Project;

    invoke-interface {v6, v1}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v6, "android-library"

    invoke-interface {v5, v1, v6}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/codehaus/groovy/runtime/typehandling/DefaultTypeTransformation;->booleanUnbox(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 52
    const/16 v1, 0x8

    aget-object v5, v4, v1

    const/16 v1, 0x9

    aget-object v6, v4, v1

    invoke-virtual {v0}, Lgroovy/lang/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/gradle/api/Project;

    invoke-interface {v6, v1}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v6, "com.android.library"

    invoke-interface {v5, v1, v6}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/codehaus/groovy/runtime/typehandling/DefaultTypeTransformation;->booleanUnbox(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    move v1, v3

    :goto_2
    if-eqz v1, :cond_5

    .line 55
    const/16 v1, 0xa

    aget-object v2, v4, v1

    invoke-virtual {v0}, Lgroovy/lang/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/gradle/api/Project;

    invoke-interface {v2, p0, v1}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callCurrent(Lgroovy/lang/GroovyObject;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    const/16 v1, 0xb

    aget-object v2, v4, v1

    invoke-virtual {v0}, Lgroovy/lang/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/gradle/api/Project;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, p0, v1, v3}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callCurrent(Lgroovy/lang/GroovyObject;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    move v1, v2

    .line 52
    goto :goto_2

    .line 62
    :cond_5
    const/16 v1, 0xc

    aget-object v2, v4, v1

    invoke-virtual {v0}, Lgroovy/lang/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/gradle/api/Project;

    invoke-interface {v2, p0, v1}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callCurrent(Lgroovy/lang/GroovyObject;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    const/16 v1, 0xd

    aget-object v2, v4, v1

    const/16 v1, 0xe

    aget-object v3, v4, v1

    invoke-virtual {v0}, Lgroovy/lang/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/gradle/api/Project;

    invoke-interface {v3, v1}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v3, "android"

    new-instance v5, Lcom/google/gms/googleservices/GoogleServicesPlugin$_apply_closure1;

    invoke-direct {v5, p0, p0, v0}, Lcom/google/gms/googleservices/GoogleServicesPlugin$_apply_closure1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lgroovy/lang/Reference;)V

    invoke-interface {v2, v1, v3, v5}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    const/16 v1, 0xf

    aget-object v2, v4, v1

    const/16 v1, 0x10

    aget-object v3, v4, v1

    invoke-virtual {v0}, Lgroovy/lang/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/gradle/api/Project;

    invoke-interface {v3, v1}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->callGetProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v3, "android-library"

    new-instance v5, Lcom/google/gms/googleservices/GoogleServicesPlugin$_apply_closure2;

    invoke-direct {v5, p0, p0, v0}, Lcom/google/gms/googleservices/GoogleServicesPlugin$_apply_closure2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lgroovy/lang/Reference;)V

    invoke-interface {v2, v1, v3, v5}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    const/16 v1, 0x11

    aget-object v2, v4, v1

    invoke-virtual {v0}, Lgroovy/lang/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/gradle/api/Project;

    new-instance v3, Lcom/google/gms/googleservices/GoogleServicesPlugin$_apply_closure3;

    invoke-direct {v3, p0, p0, v0}, Lcom/google/gms/googleservices/GoogleServicesPlugin$_apply_closure3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lgroovy/lang/Reference;)V

    invoke-interface {v2, v1, v3}, Lorg/codehaus/groovy/runtime/callsite/CallSite;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1
.end method

.method public synthetic getMetaClass()Lgroovy/lang/MetaClass;
    .locals 1

    iget-object v0, p0, Lcom/google/gms/googleservices/GoogleServicesPlugin;->metaClass:Lgroovy/lang/MetaClass;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/gms/googleservices/GoogleServicesPlugin;->$getStaticMetaClass()Lgroovy/lang/MetaClass;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gms/googleservices/GoogleServicesPlugin;->metaClass:Lgroovy/lang/MetaClass;

    iget-object v0, p0, Lcom/google/gms/googleservices/GoogleServicesPlugin;->metaClass:Lgroovy/lang/MetaClass;

    goto :goto_0
.end method

.method public synthetic getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/gms/googleservices/GoogleServicesPlugin;->getMetaClass()Lgroovy/lang/MetaClass;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lgroovy/lang/MetaClass;->getProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public synthetic invokeMethod(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/gms/googleservices/GoogleServicesPlugin;->getMetaClass()Lgroovy/lang/MetaClass;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lgroovy/lang/MetaClass;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public synthetic setMetaClass(Lgroovy/lang/MetaClass;)V
    .locals 0

    iput-object p1, p0, Lcom/google/gms/googleservices/GoogleServicesPlugin;->metaClass:Lgroovy/lang/MetaClass;

    return-void
.end method

.method public synthetic setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/gms/googleservices/GoogleServicesPlugin;->getMetaClass()Lgroovy/lang/MetaClass;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lgroovy/lang/MetaClass;->setProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
