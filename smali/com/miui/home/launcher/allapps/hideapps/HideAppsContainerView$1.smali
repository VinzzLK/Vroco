.class Lcom/miui/home/launcher/allapps/hideapps/HideAppsContainerView$1;
.super Lcom/miui/home/launcher/common/AnimationListenerAdapter;
.source "HideAppsContainerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/allapps/hideapps/HideAppsContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/allapps/hideapps/HideAppsContainerView;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/allapps/hideapps/HideAppsContainerView;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContainerView$1;->this$0:Lcom/miui/home/launcher/allapps/hideapps/HideAppsContainerView;

    invoke-direct {p0}, Lcom/miui/home/launcher/common/AnimationListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 63
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContainerView$1;->this$0:Lcom/miui/home/launcher/allapps/hideapps/HideAppsContainerView;

    invoke-static {p1}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContainerView;->access$000(Lcom/miui/home/launcher/allapps/hideapps/HideAppsContainerView;)I

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 66
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContainerView$1;->this$0:Lcom/miui/home/launcher/allapps/hideapps/HideAppsContainerView;

    invoke-static {p1}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContainerView;->access$100(Lcom/miui/home/launcher/allapps/hideapps/HideAppsContainerView;)Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 67
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContainerView$1;->this$0:Lcom/miui/home/launcher/allapps/hideapps/HideAppsContainerView;

    invoke-static {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContainerView;->access$100(Lcom/miui/home/launcher/allapps/hideapps/HideAppsContainerView;)Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsUnlockContainerView;->onHide()V

    return-void
.end method
