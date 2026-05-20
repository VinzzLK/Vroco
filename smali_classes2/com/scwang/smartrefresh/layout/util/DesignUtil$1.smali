.class final Lcom/scwang/smartrefresh/layout/util/DesignUtil$1;
.super Ljava/lang/Object;
.source "DesignUtil.java"

# interfaces
.implements Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scwang/smartrefresh/layout/util/DesignUtil;->wrapperCoordinatorLayout(Landroid/view/ViewGroup;Lcom/scwang/smartrefresh/layout/api/RefreshLayout;Lcom/scwang/smartrefresh/layout/listener/CoordinatorLayoutListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/scwang/smartrefresh/layout/listener/CoordinatorLayoutListener;

.field final synthetic val$refreshLayout:Lcom/scwang/smartrefresh/layout/api/RefreshLayout;


# direct methods
.method constructor <init>(Lcom/scwang/smartrefresh/layout/listener/CoordinatorLayoutListener;Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/scwang/smartrefresh/layout/util/DesignUtil$1;->val$listener:Lcom/scwang/smartrefresh/layout/listener/CoordinatorLayoutListener;

    iput-object p2, p0, Lcom/scwang/smartrefresh/layout/util/DesignUtil$1;->val$refreshLayout:Lcom/scwang/smartrefresh/layout/api/RefreshLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
