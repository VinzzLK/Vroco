.class Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewPlaceHolder$1;
.super Lcom/miui/home/launcher/common/AnimationListenerAdapter;
.source "HideAppsViewPlaceHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewPlaceHolder;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewPlaceHolder;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewPlaceHolder;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewPlaceHolder$1;->this$0:Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewPlaceHolder;

    invoke-direct {p0}, Lcom/miui/home/launcher/common/AnimationListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 62
    invoke-super {p0, p1}, Lcom/miui/home/launcher/common/AnimationListenerAdapter;->onAnimationEnd(Landroid/view/animation/Animation;)V

    .line 63
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewPlaceHolder$1;->this$0:Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewPlaceHolder;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 64
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewPlaceHolder$1;->this$0:Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewPlaceHolder;

    invoke-static {p1}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewPlaceHolder;->access$000(Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewPlaceHolder;)Lcom/miui/home/launcher/allapps/hideapps/HideAppsPatternViewController;

    move-result-object p1

    invoke-interface {p1}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewController;->onHide()V

    .line 65
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewPlaceHolder$1;->this$0:Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewPlaceHolder;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 66
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewPlaceHolder$1;->this$0:Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewPlaceHolder;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewPlaceHolder;->access$002(Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewPlaceHolder;Lcom/miui/home/launcher/allapps/hideapps/HideAppsPatternViewController;)Lcom/miui/home/launcher/allapps/hideapps/HideAppsPatternViewController;

    .line 67
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewPlaceHolder$1;->this$0:Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewPlaceHolder;

    invoke-static {p1}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewPlaceHolder;->access$100(Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewPlaceHolder;)Ljava/util/function/Supplier;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 68
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewPlaceHolder$1;->this$0:Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewPlaceHolder;

    invoke-static {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewPlaceHolder;->access$100(Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewPlaceHolder;)Ljava/util/function/Supplier;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .line 56
    invoke-super {p0, p1}, Lcom/miui/home/launcher/common/AnimationListenerAdapter;->onAnimationStart(Landroid/view/animation/Animation;)V

    .line 57
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewPlaceHolder$1;->this$0:Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewPlaceHolder;

    invoke-static {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewPlaceHolder;->access$000(Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewPlaceHolder;)Lcom/miui/home/launcher/allapps/hideapps/HideAppsPatternViewController;

    move-result-object p0

    invoke-interface {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewController;->onExit()V

    return-void
.end method
