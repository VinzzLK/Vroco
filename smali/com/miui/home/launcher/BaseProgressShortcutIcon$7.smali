.class Lcom/miui/home/launcher/BaseProgressShortcutIcon$7;
.super Lmiuix/animation/listener/TransitionListener;
.source "BaseProgressShortcutIcon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/BaseProgressShortcutIcon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/BaseProgressShortcutIcon;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/BaseProgressShortcutIcon;)V
    .locals 0

    .line 524
    iput-object p1, p0, Lcom/miui/home/launcher/BaseProgressShortcutIcon$7;->this$0:Lcom/miui/home/launcher/BaseProgressShortcutIcon;

    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onBegin(Ljava/lang/Object;)V
    .locals 1

    .line 527
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onBegin(Ljava/lang/Object;)V

    .line 528
    iget-object p1, p0, Lcom/miui/home/launcher/BaseProgressShortcutIcon$7;->this$0:Lcom/miui/home/launcher/BaseProgressShortcutIcon;

    iget-object p1, p1, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->mFolderCreationBg:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 529
    invoke-static {}, Lcom/miui/home/launcher/common/BlurUtilities;->isBlurSupported()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isDefaultMiuiIcon()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isMiuiLauncher()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 530
    iget-object p0, p0, Lcom/miui/home/launcher/BaseProgressShortcutIcon$7;->this$0:Lcom/miui/home/launcher/BaseProgressShortcutIcon;

    iget-object p1, p0, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->mFolderCreationBg:Landroid/widget/ImageView;

    invoke-static {p0}, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->access$500(Lcom/miui/home/launcher/BaseProgressShortcutIcon;)Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isDarkMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0802c6

    goto :goto_0

    :cond_0
    const v0, 0x7f0802c5

    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 532
    :cond_1
    iget-object p0, p0, Lcom/miui/home/launcher/BaseProgressShortcutIcon$7;->this$0:Lcom/miui/home/launcher/BaseProgressShortcutIcon;

    iget-object p0, p0, Lcom/miui/home/launcher/BaseProgressShortcutIcon;->mFolderCreationBg:Landroid/widget/ImageView;

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
