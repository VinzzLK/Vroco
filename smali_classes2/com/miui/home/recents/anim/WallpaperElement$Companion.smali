.class public final Lcom/miui/home/recents/anim/WallpaperElement$Companion;
.super Ljava/lang/Object;
.source "WallpaperElement.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/recents/anim/WallpaperElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/recents/anim/WallpaperElement$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$findUpdateZoomMethod(Lcom/miui/home/recents/anim/WallpaperElement$Companion;)Ljava/lang/reflect/Method;
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/miui/home/recents/anim/WallpaperElement$Companion;->findUpdateZoomMethod()Ljava/lang/reflect/Method;

    move-result-object p0

    return-object p0
.end method

.method private final findUpdateZoomMethod()Ljava/lang/reflect/Method;
    .locals 6

    const-class p0, Landroid/app/WallpaperManager;

    .line 76
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/os/IBinder;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-static {v0, v2}, Lcom/miui/launcher/utils/ReflectUtils;->getMethodSignature(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Landroid/os/IBinder;

    aput-object v2, v1, v4

    aput-object v3, v1, v5

    const-string v2, "setWallpaperZoomOut"

    .line 74
    invoke-static {p0, v2, v0, v1}, Lcom/miui/launcher/utils/ReflectUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getInstance()Lcom/miui/home/recents/anim/WallpaperElement;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/miui/home/recents/anim/WallpaperElement<",
            "Lcom/miui/home/recents/anim/WallpaperParam;",
            ">;"
        }
    .end annotation

    .line 63
    invoke-static {}, Lcom/miui/home/recents/anim/WallpaperElement;->access$getInstance$delegate$cp()Lkotlin/Lazy;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/home/recents/anim/WallpaperElement;

    return-object p0
.end method
