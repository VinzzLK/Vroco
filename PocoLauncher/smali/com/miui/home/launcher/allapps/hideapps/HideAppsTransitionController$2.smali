.class Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "HideAppsTransitionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController$2;->this$0:Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 130
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController$2;->onAnimationEnd(Landroid/animation/Animator;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 124
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController$2;->this$0:Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController;

    invoke-static {p1}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController;->access$000(Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController;)Lcom/miui/home/launcher/allapps/hideapps/HideAppsContainerView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContainerView;->onExit()V

    .line 125
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController$2;->this$0:Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController;

    invoke-static {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController;->access$000(Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController;)Lcom/miui/home/launcher/allapps/hideapps/HideAppsContainerView;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 118
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 119
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController$2;->this$0:Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController;

    invoke-static {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController;->access$100(Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController;)Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->setHideView(Z)V

    return-void
.end method
