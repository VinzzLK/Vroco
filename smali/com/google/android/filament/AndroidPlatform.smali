.class final Lcom/google/android/filament/AndroidPlatform;
.super Lcom/google/android/filament/Platform;
.source "AndroidPlatform.java"


# static fields
.field public static final synthetic $r8$clinit:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "Filament"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 33
    invoke-static {v0}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/google/android/filament/Platform;-><init>()V

    return-void
.end method


# virtual methods
.method getSharedContextNativeHandle(Ljava/lang/Object;)J
    .locals 0

    .line 65
    invoke-static {p1}, Lcom/google/android/filament/AndroidPlatform21;->getSharedContextNativeHandle(Ljava/lang/Object;)J

    move-result-wide p0

    return-wide p0
.end method

.method log(Ljava/lang/String;)V
    .locals 0

    const-string p0, "Filament"

    .line 40
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method validateSharedContext(Ljava/lang/Object;)Z
    .locals 0

    .line 59
    instance-of p0, p1, Landroid/opengl/EGLContext;

    return p0
.end method

.method validateStreamSource(Ljava/lang/Object;)Z
    .locals 0

    .line 49
    instance-of p0, p1, Landroid/graphics/SurfaceTexture;

    return p0
.end method

.method validateSurface(Ljava/lang/Object;)Z
    .locals 0

    .line 54
    instance-of p0, p1, Landroid/view/Surface;

    return p0
.end method

.method warn(Ljava/lang/String;)V
    .locals 0

    const-string p0, "Filament"

    .line 45
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
