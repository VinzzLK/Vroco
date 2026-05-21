.class public Lcom/miui/home/launcher/allapps/hideapps/HideAppsRecyclerView;
.super Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;
.source "HideAppsRecyclerView.java"

# interfaces
.implements Lcom/miui/home/launcher/allapps/hideapps/ScrollableView;
.implements Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onInterceptTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onRequestDisallowInterceptTouchEvent(Z)V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method
