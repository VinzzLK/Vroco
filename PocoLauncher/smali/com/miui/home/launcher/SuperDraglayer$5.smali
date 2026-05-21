.class Lcom/miui/home/launcher/SuperDraglayer$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SuperDraglayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/SuperDraglayer;->highlightLocatedApp(Lcom/miui/home/launcher/DesktopIcon;Z)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/SuperDraglayer;

.field final synthetic val$desktopIcon:Lcom/miui/home/launcher/DesktopIcon;

.field final synthetic val$highlightFolder:Z

.field final synthetic val$icon:Landroid/view/View;

.field final synthetic val$wrapIconView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/SuperDraglayer;Landroid/view/View;Lcom/miui/home/launcher/DesktopIcon;Landroid/view/View;Z)V
    .locals 0

    .line 790
    iput-object p1, p0, Lcom/miui/home/launcher/SuperDraglayer$5;->this$0:Lcom/miui/home/launcher/SuperDraglayer;

    iput-object p2, p0, Lcom/miui/home/launcher/SuperDraglayer$5;->val$icon:Landroid/view/View;

    iput-object p3, p0, Lcom/miui/home/launcher/SuperDraglayer$5;->val$desktopIcon:Lcom/miui/home/launcher/DesktopIcon;

    iput-object p4, p0, Lcom/miui/home/launcher/SuperDraglayer$5;->val$wrapIconView:Landroid/view/View;

    iput-boolean p5, p0, Lcom/miui/home/launcher/SuperDraglayer$5;->val$highlightFolder:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 792
    iget-object p1, p0, Lcom/miui/home/launcher/SuperDraglayer$5;->val$icon:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 793
    iget-object p1, p0, Lcom/miui/home/launcher/SuperDraglayer$5;->val$desktopIcon:Lcom/miui/home/launcher/DesktopIcon;

    invoke-interface {p1, v0}, Lcom/miui/home/launcher/LocatableIcon;->setIconLocating(Z)V

    .line 794
    iget-object p1, p0, Lcom/miui/home/launcher/SuperDraglayer$5;->this$0:Lcom/miui/home/launcher/SuperDraglayer;

    iget-object v0, p0, Lcom/miui/home/launcher/SuperDraglayer$5;->val$wrapIconView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 795
    iget-boolean p1, p0, Lcom/miui/home/launcher/SuperDraglayer$5;->val$highlightFolder:Z

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/miui/home/launcher/SuperDraglayer$5;->this$0:Lcom/miui/home/launcher/SuperDraglayer;

    iget-object p0, p0, Lcom/miui/home/launcher/SuperDraglayer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->onFinishHighlightLocatedApp()V

    :cond_0
    return-void
.end method
