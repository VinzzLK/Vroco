.class Lcom/miui/home/launcher/anim/FolderCreateBgAnim$1;
.super Lmiuix/animation/listener/TransitionListener;
.source "FolderCreateBgAnim.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/anim/FolderCreateBgAnim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/anim/FolderCreateBgAnim;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/anim/FolderCreateBgAnim;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/miui/home/launcher/anim/FolderCreateBgAnim$1;->this$0:Lcom/miui/home/launcher/anim/FolderCreateBgAnim;

    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onBegin(Ljava/lang/Object;)V
    .locals 1

    .line 63
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onBegin(Ljava/lang/Object;)V

    .line 64
    iget-object p1, p0, Lcom/miui/home/launcher/anim/FolderCreateBgAnim$1;->this$0:Lcom/miui/home/launcher/anim/FolderCreateBgAnim;

    invoke-static {p1}, Lcom/miui/home/launcher/anim/FolderCreateBgAnim;->access$000(Lcom/miui/home/launcher/anim/FolderCreateBgAnim;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 p1, 0x1

    .line 65
    invoke-static {p1}, Lcom/miui/home/launcher/common/BlurUtilities;->isFolderBlurSupported(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 68
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isDefaultMiuiIcon()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isMiuiLauncher()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 69
    iget-object p1, p0, Lcom/miui/home/launcher/anim/FolderCreateBgAnim$1;->this$0:Lcom/miui/home/launcher/anim/FolderCreateBgAnim;

    invoke-static {p1}, Lcom/miui/home/launcher/anim/FolderCreateBgAnim;->access$000(Lcom/miui/home/launcher/anim/FolderCreateBgAnim;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object p0, p0, Lcom/miui/home/launcher/anim/FolderCreateBgAnim$1;->this$0:Lcom/miui/home/launcher/anim/FolderCreateBgAnim;

    invoke-static {p0}, Lcom/miui/home/launcher/anim/FolderCreateBgAnim;->access$100(Lcom/miui/home/launcher/anim/FolderCreateBgAnim;)Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isDarkMode()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0802c6

    goto :goto_0

    :cond_1
    const v0, 0x7f0802c5

    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 71
    :cond_2
    iget-object p0, p0, Lcom/miui/home/launcher/anim/FolderCreateBgAnim$1;->this$0:Lcom/miui/home/launcher/anim/FolderCreateBgAnim;

    invoke-static {p0}, Lcom/miui/home/launcher/anim/FolderCreateBgAnim;->access$000(Lcom/miui/home/launcher/anim/FolderCreateBgAnim;)Landroid/widget/ImageView;

    move-result-object p0

    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/Application;->getIconCache()Lcom/miui/home/launcher/IconCache;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/IconCache;->getInitialIconFolderIcon1X1()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    return-void
.end method
