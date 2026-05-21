.class Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager$1;
.super Ljava/lang/Object;
.source "DesktopWallpaperManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;


# direct methods
.method public static synthetic $r8$lambda$FTnfy9ePFkPX1xeeyQNC6C3N7t8(Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager$1;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager$1;->lambda$run$1(Ljava/lang/Void;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LhEf_pz56368-yMbr_kuI6r0OS4(Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager$1;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager$1;->lambda$run$0(Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager$1;->this$0:Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$run$0(Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2

    .line 87
    invoke-static {}, Lcom/miui/home/launcher/uioverrides/WallpaperColorInfo;->getInstance()Lcom/miui/home/launcher/uioverrides/WallpaperColorInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager$1;->this$0:Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;

    invoke-static {v0}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->access$200(Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;)Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompat;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompat;->getWallpaperColors(I)Lcom/miui/home/launcher/wallpaper/WallpaperColorsCompat;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/uioverrides/WallpaperColorInfo;->update(Lcom/miui/home/launcher/wallpaper/WallpaperColorsCompat;)V

    .line 88
    iget-object p1, p0, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager$1;->this$0:Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;

    invoke-static {p1}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->access$200(Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;)Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompat;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompat;->getDesktopWallpaperInfo()Lcom/miui/home/launcher/wallpaper/DesktopWallpaperInfo;

    move-result-object p1

    .line 89
    iget-object v0, p0, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager$1;->this$0:Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;

    invoke-static {v0}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->access$200(Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;)Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/wallpaper/WallpaperManagerCompat;->getMiuiWallpaperType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/WallpaperUtils;->setMiuiWallpaperType(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p1}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperInfo;->getColorMode()I

    move-result v0

    invoke-static {v0}, Lcom/miui/home/launcher/WallpaperUtils;->setCurrentWallpaperColorMode(I)V

    .line 91
    invoke-virtual {p1}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperInfo;->getStatusBarColorMode()I

    move-result v0

    invoke-static {v0}, Lcom/miui/home/launcher/WallpaperUtils;->setCurrentStatusBarAreaColorMode(I)V

    .line 92
    invoke-virtual {p1}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperInfo;->getSearchBarColorMode()I

    move-result v0

    invoke-static {v0}, Lcom/miui/home/launcher/WallpaperUtils;->setCurrentSearchBarAreaColorMode(I)V

    .line 93
    invoke-virtual {p1}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperInfo;->isScrollable()Z

    move-result p1

    invoke-static {p1}, Lcom/miui/home/launcher/WallpaperUtils;->setIsCurrentWallpaperScrollable(Z)V

    .line 94
    sget-boolean p1, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_T:Z

    if-nez p1, :cond_0

    .line 95
    iget-object p0, p0, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager$1;->this$0:Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;

    invoke-static {p0}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->access$300(Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;)Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->access$400(Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;Landroid/content/Context;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$run$1(Ljava/lang/Void;)V
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager$1;->this$0:Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;

    invoke-static {p0}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->access$100(Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 86
    new-instance v0, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager$1$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager$1$$ExternalSyntheticLambda1;-><init>(Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager$1;)V

    new-instance v1, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager$1$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager$1;)V

    const/4 p0, 0x0

    invoke-static {v0, v1, p0}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method
