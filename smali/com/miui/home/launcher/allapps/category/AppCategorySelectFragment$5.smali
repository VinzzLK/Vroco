.class Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment$5;
.super Ljava/lang/Object;
.source "AppCategorySelectFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;)V
    .locals 0

    .line 255
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment$5;->this$0:Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 258
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment$5;->this$0:Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;

    invoke-static {p1}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->access$500(Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;)Landroid/widget/TextView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 259
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment$5;->this$0:Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;

    invoke-static {p1}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->access$200(Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;)Landroid/widget/EditText;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setVisibility(I)V

    .line 260
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment$5;->this$0:Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;

    invoke-static {p1}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->access$200(Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 261
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment$5;->this$0:Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;

    invoke-static {p1}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->access$100(Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 263
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment$5;->this$0:Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;

    invoke-static {p1}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->access$100(Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 265
    :goto_0
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment$5;->this$0:Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;

    invoke-static {p1}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->access$200(Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 266
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment$5;->this$0:Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment$5;->this$0:Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;

    invoke-static {p0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->access$200(Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;)Landroid/widget/EditText;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/miui/home/launcher/util/MainThreadHelper;->showKeyboardAsync(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method
