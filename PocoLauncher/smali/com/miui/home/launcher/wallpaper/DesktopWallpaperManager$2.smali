.class Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager$2;
.super Ljava/lang/Object;
.source "DesktopWallpaperManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->adaptHomeToWallpaper()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;

.field final synthetic val$workspace:Lcom/miui/home/launcher/Workspace;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;Lcom/miui/home/launcher/Workspace;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager$2;->this$0:Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;

    iput-object p2, p0, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager$2;->val$workspace:Lcom/miui/home/launcher/Workspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 111
    iget-object v0, p0, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager$2;->this$0:Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;

    invoke-static {v0}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->access$300(Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;)Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    const-string v1, "Launcher_DesktopWallpaperManager"

    if-eqz v0, :cond_0

    const-string p0, "adaptHomeToWallpaper, launcher is destroy"

    .line 112
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager$2;->this$0:Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;

    invoke-static {v0}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->access$300(Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;)Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isWorkspaceLoading()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "adaptHomeToWallpaper, launcher is loading"

    .line 116
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v0, p0, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager$2;->this$0:Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;

    invoke-static {v0}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->access$300(Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;)Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getLoadingAnimation()Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 119
    invoke-virtual {v0}, Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation;->showLoading()V

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager$2;->val$workspace:Lcom/miui/home/launcher/Workspace;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, p0, v1, v2}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_2
    const-string v0, "adaptHomeToWallpaper, notify everyone"

    .line 124
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object v0, p0, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager$2;->this$0:Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;

    invoke-static {v0}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->access$500(Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;)V

    .line 126
    iget-object p0, p0, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager$2;->this$0:Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;

    invoke-static {p0}, Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;->access$300(Lcom/miui/home/launcher/wallpaper/DesktopWallpaperManager;)Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->changeStatusBarMode()V

    return-void
.end method
