.class Lcom/miui/home/launcher/allapps/category/CategoryTitleAdapter$1;
.super Landroid/database/DataSetObserver;
.source "CategoryTitleAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/allapps/category/CategoryTitleAdapter;-><init>(Landroid/content/Context;Lcom/miui/home/library/view/viewpager/ViewPager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/allapps/category/CategoryTitleAdapter;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/allapps/category/CategoryTitleAdapter;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/category/CategoryTitleAdapter$1;->this$0:Lcom/miui/home/launcher/allapps/category/CategoryTitleAdapter;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/CategoryTitleAdapter$1;->this$0:Lcom/miui/home/launcher/allapps/category/CategoryTitleAdapter;

    invoke-virtual {p0}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/CommonNavigatorAdapter;->notifyDataSetChanged()V

    return-void
.end method
