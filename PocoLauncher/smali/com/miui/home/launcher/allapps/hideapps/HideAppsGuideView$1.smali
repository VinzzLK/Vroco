.class Lcom/miui/home/launcher/allapps/hideapps/HideAppsGuideView$1;
.super Lcom/miui/home/launcher/common/AnimationListenerAdapter;
.source "HideAppsGuideView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/allapps/hideapps/HideAppsGuideView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/allapps/hideapps/HideAppsGuideView;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/allapps/hideapps/HideAppsGuideView;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsGuideView$1;->this$0:Lcom/miui/home/launcher/allapps/hideapps/HideAppsGuideView;

    invoke-direct {p0}, Lcom/miui/home/launcher/common/AnimationListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .line 59
    invoke-super {p0, p1}, Lcom/miui/home/launcher/common/AnimationListenerAdapter;->onAnimationEnd(Landroid/view/animation/Animation;)V

    .line 60
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsGuideView$1;->this$0:Lcom/miui/home/launcher/allapps/hideapps/HideAppsGuideView;

    invoke-static {v0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsGuideView;->access$000(Lcom/miui/home/launcher/allapps/hideapps/HideAppsGuideView;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 61
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsGuideView$1;->this$0:Lcom/miui/home/launcher/allapps/hideapps/HideAppsGuideView;

    new-instance v1, Lcom/miui/home/launcher/allapps/hideapps/HideAppsGuideView$1$1;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsGuideView$1$1;-><init>(Lcom/miui/home/launcher/allapps/hideapps/HideAppsGuideView$1;Landroid/view/animation/Animation;)V

    const-wide/16 p0, 0x7d0

    invoke-virtual {v0, v1, p0, p1}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .line 53
    invoke-super {p0, p1}, Lcom/miui/home/launcher/common/AnimationListenerAdapter;->onAnimationStart(Landroid/view/animation/Animation;)V

    .line 54
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsGuideView$1;->this$0:Lcom/miui/home/launcher/allapps/hideapps/HideAppsGuideView;

    invoke-static {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsGuideView;->access$000(Lcom/miui/home/launcher/allapps/hideapps/HideAppsGuideView;)Landroid/widget/ImageView;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
