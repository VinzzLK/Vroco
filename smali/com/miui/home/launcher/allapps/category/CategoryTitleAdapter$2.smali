.class Lcom/miui/home/launcher/allapps/category/CategoryTitleAdapter$2;
.super Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/SimplePagerTitleView;
.source "CategoryTitleAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/allapps/category/CategoryTitleAdapter;->getTitleView(Landroid/content/Context;I)Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/IPagerTitleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/allapps/category/CategoryTitleAdapter;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/allapps/category/CategoryTitleAdapter;Landroid/content/Context;Landroid/content/Context;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/category/CategoryTitleAdapter$2;->this$0:Lcom/miui/home/launcher/allapps/category/CategoryTitleAdapter;

    iput-object p3, p0, Lcom/miui/home/launcher/allapps/category/CategoryTitleAdapter$2;->val$context:Landroid/content/Context;

    invoke-direct {p0, p2}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/SimplePagerTitleView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onDeselected(II)V
    .locals 2

    .line 58
    invoke-super {p0, p1, p2}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/SimplePagerTitleView;->onDeselected(II)V

    .line 59
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/category/CategoryTitleAdapter$2;->val$context:Landroid/content/Context;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p2, v1

    const v0, 0x7f10008b

    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onSelected(II)V
    .locals 2

    .line 52
    invoke-super {p0, p1, p2}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/SimplePagerTitleView;->onSelected(II)V

    .line 53
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/category/CategoryTitleAdapter$2;->val$context:Landroid/content/Context;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p2, v1

    const v0, 0x7f100068

    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method
