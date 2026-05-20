.class public Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$AppsGridLayoutManager;
.super Landroidx/recyclerview/widget/GridLayoutManager;
.source "AllAppsGridAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AppsGridLayoutManager"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;Landroid/content/Context;)V
    .locals 1

    .line 88
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter$AppsGridLayoutManager;->this$0:Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;

    const/4 p1, 0x1

    const/4 v0, 0x0

    .line 89
    invoke-direct {p0, p2, p1, p1, v0}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    return-void
.end method


# virtual methods
.method public onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    .line 95
    :try_start_0
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "AllAppsGridAdapter"

    const-string p2, "onLayoutChildren "

    .line 97
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
