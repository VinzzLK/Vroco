.class Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$3;
.super Ljava/lang/Object;
.source "SmartRefreshLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;


# direct methods
.method constructor <init>(Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;)V
    .locals 0

    .line 425
    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$3;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 428
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$3;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 429
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 430
    instance-of v1, v0, Landroidx/core/view/NestedScrollingParent;

    if-eqz v1, :cond_0

    .line 431
    iget-object v1, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$3;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 433
    move-object v2, v0

    check-cast v2, Landroidx/core/view/NestedScrollingParent;

    const/4 v3, 0x2

    invoke-interface {v2, v1, v1, v3}, Landroidx/core/view/NestedScrollingParent;->onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 434
    iget-object v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$3;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->setNestedScrollingEnabled(Z)V

    .line 435
    iget-object p0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout$3;->this$0:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->mManualNestedScrolling:Z

    goto :goto_1

    .line 439
    :cond_0
    check-cast v0, Landroid/view/View;

    .line 440
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
