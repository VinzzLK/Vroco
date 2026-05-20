.class Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment$2;
.super Ljava/lang/Object;
.source "AppCategorySelectFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


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

    .line 213
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment$2;->this$0:Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 226
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 227
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 228
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment$2;->this$0:Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;

    invoke-static {p0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->access$100(Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;)Landroid/widget/ImageView;

    move-result-object p0

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 230
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment$2;->this$0:Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;

    invoke-static {p0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->access$100(Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;)Landroid/widget/ImageView;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
