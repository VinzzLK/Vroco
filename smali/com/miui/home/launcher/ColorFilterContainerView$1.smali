.class Lcom/miui/home/launcher/ColorFilterContainerView$1;
.super Ljava/lang/Object;
.source "ColorFilterContainerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/ColorFilterContainerView;->setUpColorFilterContainerView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/ColorFilterContainerView;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/ColorFilterContainerView;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/miui/home/launcher/ColorFilterContainerView$1;->this$0:Lcom/miui/home/launcher/ColorFilterContainerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 111
    iget-object p1, p0, Lcom/miui/home/launcher/ColorFilterContainerView$1;->this$0:Lcom/miui/home/launcher/ColorFilterContainerView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/ColorFilterContainerView;->changeSearchBarState(Z)V

    .line 112
    iget-object p1, p0, Lcom/miui/home/launcher/ColorFilterContainerView$1;->this$0:Lcom/miui/home/launcher/ColorFilterContainerView;

    invoke-static {p1}, Lcom/miui/home/launcher/ColorFilterContainerView;->access$000(Lcom/miui/home/launcher/ColorFilterContainerView;)Lcom/miui/home/launcher/allapps/anim/RevealDrawable;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/home/launcher/ColorFilterContainerView$1;->this$0:Lcom/miui/home/launcher/ColorFilterContainerView;

    invoke-static {p1}, Lcom/miui/home/launcher/ColorFilterContainerView;->access$000(Lcom/miui/home/launcher/ColorFilterContainerView;)Lcom/miui/home/launcher/allapps/anim/RevealDrawable;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/allapps/anim/RevealDrawable;->isAnimating()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 113
    iget-object p1, p0, Lcom/miui/home/launcher/ColorFilterContainerView$1;->this$0:Lcom/miui/home/launcher/ColorFilterContainerView;

    invoke-static {p1}, Lcom/miui/home/launcher/ColorFilterContainerView;->access$000(Lcom/miui/home/launcher/ColorFilterContainerView;)Lcom/miui/home/launcher/allapps/anim/RevealDrawable;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/allapps/anim/RevealDrawable;->cancel()V

    .line 115
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/ColorFilterContainerView$1;->this$0:Lcom/miui/home/launcher/ColorFilterContainerView;

    invoke-static {p1}, Lcom/miui/home/launcher/ColorFilterContainerView;->access$200(Lcom/miui/home/launcher/ColorFilterContainerView;)Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->getSearchBarController()Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/miui/home/launcher/ColorFilterContainerView;->access$102(Lcom/miui/home/launcher/ColorFilterContainerView;Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;)Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;

    .line 116
    iget-object p1, p0, Lcom/miui/home/launcher/ColorFilterContainerView$1;->this$0:Lcom/miui/home/launcher/ColorFilterContainerView;

    invoke-static {p1}, Lcom/miui/home/launcher/ColorFilterContainerView;->access$100(Lcom/miui/home/launcher/ColorFilterContainerView;)Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;

    move-result-object p1

    iget-object v1, p0, Lcom/miui/home/launcher/ColorFilterContainerView$1;->this$0:Lcom/miui/home/launcher/ColorFilterContainerView;

    invoke-static {v1}, Lcom/miui/home/launcher/ColorFilterContainerView;->access$300(Lcom/miui/home/launcher/ColorFilterContainerView;)Landroid/widget/RadioGroup;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->onFocusChange(Landroid/view/View;Z)V

    .line 117
    iget-object p1, p0, Lcom/miui/home/launcher/ColorFilterContainerView$1;->this$0:Lcom/miui/home/launcher/ColorFilterContainerView;

    invoke-static {p1}, Lcom/miui/home/launcher/ColorFilterContainerView;->access$100(Lcom/miui/home/launcher/ColorFilterContainerView;)Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->getInput()Lcom/miui/home/launcher/ExtendedEditText;

    move-result-object p1

    .line 118
    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 119
    invoke-virtual {p1, v2}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 120
    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 121
    iget-object p0, p0, Lcom/miui/home/launcher/ColorFilterContainerView$1;->this$0:Lcom/miui/home/launcher/ColorFilterContainerView;

    invoke-static {p0}, Lcom/miui/home/launcher/ColorFilterContainerView;->access$400(Lcom/miui/home/launcher/ColorFilterContainerView;)Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    .line 122
    invoke-virtual {p0, p1, v0}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method
