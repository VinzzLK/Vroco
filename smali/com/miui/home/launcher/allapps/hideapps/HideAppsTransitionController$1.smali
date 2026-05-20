.class Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController$1;
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

    .line 84
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController$1;->this$0:Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 100
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController$1;->onAnimationEnd(Landroid/animation/Animator;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 94
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController$1;->this$0:Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController;

    invoke-static {p1}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController;->access$000(Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController;)Lcom/miui/home/launcher/allapps/hideapps/HideAppsContainerView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 95
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController$1;->this$0:Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController;

    invoke-static {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController;->access$000(Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController;)Lcom/miui/home/launcher/allapps/hideapps/HideAppsContainerView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsContainerView;->onEnter()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 88
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController$1;->this$0:Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController;

    invoke-static {p1}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController;->access$000(Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController;)Lcom/miui/home/launcher/allapps/hideapps/HideAppsContainerView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 89
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController$1;->this$0:Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController;

    invoke-static {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController;->access$100(Lcom/miui/home/launcher/allapps/hideapps/HideAppsTransitionController;)Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/AllAppsContainerView;->setHideView(Z)V

    return-void
.end method
