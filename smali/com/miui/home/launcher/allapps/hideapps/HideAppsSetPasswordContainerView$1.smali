.class Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$1;
.super Lcom/miui/home/launcher/common/AnimationListenerAdapter;
.source "HideAppsSetPasswordContainerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$1;->this$0:Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;

    invoke-direct {p0}, Lcom/miui/home/launcher/common/AnimationListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    .line 86
    invoke-super {p0, p1}, Lcom/miui/home/launcher/common/AnimationListenerAdapter;->onAnimationEnd(Landroid/view/animation/Animation;)V

    .line 87
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView$1;->this$0:Lcom/miui/home/launcher/allapps/hideapps/HideAppsSetPasswordContainerView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method
