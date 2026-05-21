.class Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer$3;
.super Ljava/lang/Object;
.source "AllAppsCategoryListContainer.java"

# interfaces
.implements Lcom/miui/home/library/view/viewpager/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer$3;->this$0:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 2

    .line 160
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer$3;->this$0:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;

    invoke-static {v0, p1}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->access$102(Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;I)I

    if-nez p1, :cond_0

    .line 161
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer$3;->this$0:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;

    invoke-static {v0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->access$200(Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer$3;->this$0:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->access$202(Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;Z)Z

    .line 163
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer$3;->this$0:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;

    invoke-static {v0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->access$300(Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;)V

    .line 165
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer$3;->this$0:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;

    invoke-static {p0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->access$400(Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;)Lnet/lucode/hackware/magicindicator/MagicIndicator;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/lucode/hackware/magicindicator/MagicIndicator;->onPageScrollStateChanged(I)V

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer$3;->this$0:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;

    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->onPageScrolled(IFI)V

    return-void
.end method

.method public onPageSelected(I)V
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer$3;->this$0:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->onPageSelected(I)V

    return-void
.end method
