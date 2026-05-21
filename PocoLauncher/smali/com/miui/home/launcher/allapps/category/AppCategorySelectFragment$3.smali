.class Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment$3;
.super Ljava/lang/Object;
.source "AppCategorySelectFragment.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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

    .line 234
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment$3;->this$0:Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    if-nez p2, :cond_1

    if-nez p2, :cond_0

    .line 237
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment$3;->this$0:Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;

    invoke-static {p1}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->access$200(Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 240
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment$3;->this$0:Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;

    invoke-static {p1}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->access$200(Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;)Landroid/widget/EditText;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment$3;->this$0:Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment$3;->this$0:Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;

    invoke-static {v0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->access$400(Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;)Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    move-result-object v0

    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment$3;->this$0:Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;

    invoke-static {p0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->access$300(Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->getTitleTextBackgroundResource(I)I

    move-result p0

    invoke-virtual {p2, p0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 238
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment$3;->this$0:Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;

    invoke-static {p1}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->access$200(Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;)Landroid/widget/EditText;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment$3;->this$0:Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment$3;->this$0:Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;

    invoke-static {v0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->access$400(Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;)Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    move-result-object v0

    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment$3;->this$0:Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;

    invoke-static {p0}, Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;->access$300(Lcom/miui/home/launcher/allapps/category/AppCategorySelectFragment;)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/allapps/AllAppsColorMode;->getTitleEditTextBackgroundResource(I)I

    move-result p0

    invoke-virtual {p2, p0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    return-void
.end method
