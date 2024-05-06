.class public Lcom/wardrumstudios/utils/NDKHelper;
.super Ljava/lang/Object;
.source "NDKHelper.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x9
.end annotation


# static fields
.field private static loadedSO:Z


# instance fields
.field activity:Landroid/app/NativeActivity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    sput-boolean v0, Lcom/wardrumstudios/utils/NDKHelper;->loadedSO:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/NativeActivity;)V
    .locals 0
    .param p1, "act"    # Landroid/app/NativeActivity;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/wardrumstudios/utils/NDKHelper;->activity:Landroid/app/NativeActivity;

    .line 43
    return-void
.end method

.method public static checkSOLoaded()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 53
    sget-boolean v0, Lcom/wardrumstudios/utils/NDKHelper;->loadedSO:Z

    if-nez v0, :cond_0

    .line 54
    const-string v0, "NDKHelper"

    const-string v1, "--------------------------------------------\n.so has not been loaded. To use JUI helper, please initialize with \nNDKHelper::Init( ANativeActivity* activity, const char* helper_class_name, const char* native_soname);\n--------------------------------------------\n"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 61
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method private nextPOT(I)I
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 73
    const/4 v0, 0x1

    .line 74
    .local v0, "pot":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 75
    shl-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 76
    :cond_0
    return v0
.end method

.method private scaleBitmap(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "bitmapToScale"    # Landroid/graphics/Bitmap;
    .param p2, "newWidth"    # F
    .param p3, "newHeight"    # F

    .prologue
    const/4 v1, 0x0

    .line 81
    if-nez p1, :cond_0

    .line 82
    const/4 v0, 0x0

    .line 93
    :goto_0
    return-object v0

    .line 84
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 85
    .local v8, "width":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 87
    .local v7, "height":I
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 90
    .local v5, "matrix":Landroid/graphics/Matrix;
    int-to-float v0, v8

    div-float v0, p2, v0

    int-to-float v2, v7

    div-float v2, p3, v2

    invoke-virtual {v5, v0, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 94
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p1

    move v2, v1

    .line 93
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public native RunOnUiThreadHandler(J)V
.end method

.method public closeBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 171
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 172
    return-void
.end method

.method public getApplicationName()Ljava/lang/String;
    .locals 6

    .prologue
    .line 187
    iget-object v4, p0, Lcom/wardrumstudios/utils/NDKHelper;->activity:Landroid/app/NativeActivity;

    invoke-virtual {v4}, Landroid/app/NativeActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 190
    .local v3, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    iget-object v4, p0, Lcom/wardrumstudios/utils/NDKHelper;->activity:Landroid/app/NativeActivity;

    invoke-virtual {v4}, Landroid/app/NativeActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 194
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    :goto_0
    if-eqz v0, :cond_0

    .line 195
    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    :goto_1
    check-cast v4, Ljava/lang/String;

    move-object v1, v4

    check-cast v1, Ljava/lang/String;

    .line 196
    .local v1, "applicationName":Ljava/lang/String;
    return-object v1

    .line 191
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "applicationName":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 192
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v0, 0x0

    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    goto :goto_0

    .line 195
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    const-string v4, "(unknown)"

    goto :goto_1
.end method

.method public getBitmapHeight(Landroid/graphics/Bitmap;)I
    .locals 1
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 161
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    return v0
.end method

.method public getBitmapPixels(Landroid/graphics/Bitmap;[I)V
    .locals 8
    .param p1, "bmp"    # Landroid/graphics/Bitmap;
    .param p2, "pixels"    # [I

    .prologue
    const/4 v2, 0x0

    .line 165
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 166
    .local v3, "w":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .local v7, "h":I
    move-object v0, p1

    move-object v1, p2

    move v4, v2

    move v5, v2

    move v6, v3

    .line 167
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 168
    return-void
.end method

.method public getBitmapWidth(Landroid/graphics/Bitmap;)I
    .locals 1
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 157
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    return v0
.end method

.method public getNativeAudioBufferSize()I
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    .line 204
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 205
    .local v0, "SDK_INT":I
    const/16 v3, 0x11

    if-lt v0, v3, :cond_0

    .line 206
    iget-object v3, p0, Lcom/wardrumstudios/utils/NDKHelper;->activity:Landroid/app/NativeActivity;

    const-string v4, "audio"

    .line 207
    invoke-virtual {v3, v4}, Landroid/app/NativeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 208
    .local v1, "am":Landroid/media/AudioManager;
    const-string v3, "android.media.property.OUTPUT_FRAMES_PER_BUFFER"

    .line 209
    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 210
    .local v2, "framesPerBuffer":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 212
    .end local v1    # "am":Landroid/media/AudioManager;
    .end local v2    # "framesPerBuffer":Ljava/lang/String;
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getNativeAudioSampleRate()I
    .locals 1

    .prologue
    .line 217
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/media/AudioTrack;->getNativeOutputSampleRate(I)I

    move-result v0

    return v0
.end method

.method public getNativeLibraryDirectory(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p1, "appContext"    # Landroid/content/Context;

    .prologue
    .line 175
    iget-object v1, p0, Lcom/wardrumstudios/utils/NDKHelper;->activity:Landroid/app/NativeActivity;

    invoke-virtual {v1}, Landroid/app/NativeActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 177
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    const-string v1, "NDKHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ai.nativeLibraryDir:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_0

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_1

    .line 181
    :cond_0
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 183
    :goto_0
    return-object v1

    :cond_1
    const-string v1, "/system/lib/"

    goto :goto_0
.end method

.method public loadLibrary(Ljava/lang/String;)V
    .locals 1
    .param p1, "soname"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    invoke-static {p1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 48
    const/4 v0, 0x1

    sput-boolean v0, Lcom/wardrumstudios/utils/NDKHelper;->loadedSO:Z

    .line 50
    :cond_0
    return-void
.end method

.method public loadTexture(Ljava/lang/String;)Z
    .locals 8
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 99
    const/4 v0, 0x0

    .line 101
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    move-object v3, p1

    .line 102
    .local v3, "str":Ljava/lang/String;
    :try_start_0
    const-string v5, "/"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 103
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 106
    :cond_0
    new-instance v2, Ljava/io/File;

    iget-object v5, p0, Lcom/wardrumstudios/utils/NDKHelper;->activity:Landroid/app/NativeActivity;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/app/NativeActivity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-direct {v2, v5, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 107
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 108
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 126
    :goto_0
    if-eqz v0, :cond_1

    .line 127
    const/16 v5, 0xde1

    invoke-static {v5, v4, v0, v4}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 129
    :cond_1
    const/4 v4, 0x1

    .end local v2    # "file":Ljava/io/File;
    :goto_1
    return v4

    .line 110
    .restart local v2    # "file":Ljava/io/File;
    :cond_2
    :try_start_1
    iget-object v5, p0, Lcom/wardrumstudios/utils/NDKHelper;->activity:Landroid/app/NativeActivity;

    invoke-virtual {v5}, Landroid/app/NativeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 111
    invoke-virtual {v5}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    .line 110
    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0

    .line 121
    .end local v2    # "file":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 122
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "NDKHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Coundn\'t load a file:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public openBitmap(Ljava/lang/String;Z)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "iScalePOT"    # Z

    .prologue
    .line 134
    const/4 v0, 0x0

    .line 136
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    iget-object v6, p0, Lcom/wardrumstudios/utils/NDKHelper;->activity:Landroid/app/NativeActivity;

    invoke-virtual {v6}, Landroid/app/NativeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 137
    invoke-virtual {v6}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    .line 136
    invoke-static {v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 138
    if-eqz p2, :cond_1

    .line 139
    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/NDKHelper;->getBitmapWidth(Landroid/graphics/Bitmap;)I

    move-result v4

    .line 140
    .local v4, "originalWidth":I
    invoke-virtual {p0, v0}, Lcom/wardrumstudios/utils/NDKHelper;->getBitmapHeight(Landroid/graphics/Bitmap;)I

    move-result v3

    .line 141
    .local v3, "originalHeight":I
    invoke-direct {p0, v4}, Lcom/wardrumstudios/utils/NDKHelper;->nextPOT(I)I

    move-result v5

    .line 142
    .local v5, "width":I
    invoke-direct {p0, v3}, Lcom/wardrumstudios/utils/NDKHelper;->nextPOT(I)I

    move-result v2

    .line 143
    .local v2, "height":I
    if-ne v4, v5, :cond_0

    if-eq v3, v2, :cond_1

    .line 145
    :cond_0
    int-to-float v6, v5

    int-to-float v7, v2

    invoke-direct {p0, v0, v6, v7}, Lcom/wardrumstudios/utils/NDKHelper;->scaleBitmap(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 153
    .end local v2    # "height":I
    .end local v3    # "originalHeight":I
    .end local v4    # "originalWidth":I
    .end local v5    # "width":I
    :cond_1
    :goto_0
    return-object v0

    .line 149
    :catch_0
    move-exception v1

    .line 150
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "NDKHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Coundn\'t load a file:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public runOnUIThread(J)V
    .locals 3
    .param p1, "p"    # J

    .prologue
    .line 224
    invoke-static {}, Lcom/wardrumstudios/utils/NDKHelper;->checkSOLoaded()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/wardrumstudios/utils/NDKHelper;->activity:Landroid/app/NativeActivity;

    new-instance v1, Lcom/wardrumstudios/utils/NDKHelper$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/wardrumstudios/utils/NDKHelper$1;-><init>(Lcom/wardrumstudios/utils/NDKHelper;J)V

    invoke-virtual {v0, v1}, Landroid/app/NativeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 232
    :cond_0
    return-void
.end method
