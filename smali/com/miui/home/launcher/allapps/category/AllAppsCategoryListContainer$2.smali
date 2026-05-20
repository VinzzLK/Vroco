.class Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer$2;
.super Ljava/lang/Object;
.source "AllAppsCategoryListContainer.java"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;


# direct methods
.method public static synthetic $r8$lambda$alx8SIvtkwL5S0rKBfMSc-DsBSY(Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer$2;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer$2;->lambda$onChanged$0(Ljava/lang/Integer;)V

    return-void
.end method

.method constructor <init>(Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer$2;->this$0:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onChanged$0(Ljava/lang/Integer;)V
    .locals 2

    .line 137
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer$2;->this$0:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070078

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 138
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le v1, v0, :cond_0

    .line 139
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer$2;->this$0:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;

    invoke-static {v1}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->access$000(Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 140
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 141
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer$2;->this$0:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;

    invoke-static {p0}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;->access$000(Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;)Landroid/widget/RelativeLayout;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/Integer;)V
    .locals 2

    .line 136
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer$2;->this$0:Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer;

    new-instance v1, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer$2$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer$2$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer$2;Ljava/lang/Integer;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 133
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/category/AllAppsCategoryListContainer$2;->onChanged(Ljava/lang/Integer;)V

    return-void
.end method
