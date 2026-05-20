.class public final Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewPlaceHolderSheet;
.super Lcom/miui/home/launcher/AbstractFloatingView;
.source "HideAppsViewPlaceHolderSheet.kt"

# interfaces
.implements Lcom/miui/home/launcher/Insettable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewPlaceHolderSheet$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewPlaceHolderSheet$Companion;


# instance fields
.field public _$_findViewCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$89Xf724vwoGOwyFvwfNxl-g9HaY(Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewPlaceHolderSheet;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewPlaceHolderSheet;->handleClose$lambda-0(Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewPlaceHolderSheet;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewPlaceHolderSheet$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewPlaceHolderSheet$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewPlaceHolderSheet;->Companion:Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewPlaceHolderSheet$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 22
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewPlaceHolderSheet;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewPlaceHolderSheet;->_$_findViewCache:Ljava/util/Map;

    .line 20
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/launcher/AbstractFloatingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private static final handleClose$lambda-0(Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewPlaceHolderSheet;)Ljava/lang/Object;
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getDragLayer()Lcom/miui/home/launcher/DragLayer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewPlaceHolderSheet;->_$_findViewCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-nez v1, :cond_1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return-object v1
.end method

.method protected handleClose(Z)V
    .locals 2

    .line 25
    sget p1, Lcom/miui/home/R$id;->hide_apps_view_place_holder:I

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewPlaceHolderSheet;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewPlaceHolder;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewPlaceHolderSheet$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewPlaceHolderSheet$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewPlaceHolderSheet;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewPlaceHolder;->setCloseCallback(Ljava/util/function/Supplier;)V

    .line 28
    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewPlaceHolderSheet;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewPlaceHolder;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewPlaceHolder;->closeView()V

    :cond_1
    return-void
.end method

.method public final handleOpen()V
    .locals 1

    const/4 v0, 0x1

    .line 46
    iput-boolean v0, p0, Lcom/miui/home/launcher/AbstractFloatingView;->mIsOpen:Z

    return-void
.end method

.method protected isOfType(I)Z
    .locals 0

    and-int/lit16 p0, p1, 0x800

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public setInsets(Landroid/graphics/Rect;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 38
    sget v0, Lcom/miui/home/R$id;->hide_apps_view_place_holder:I

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewPlaceHolderSheet;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewPlaceHolder;

    iget v2, p1, Landroid/graphics/Rect;->left:I

    invoke-static {v1, v2}, Lcom/miui/home/launcher/common/ViewFunctions;->setViewPaddingLeft(Landroid/view/View;I)V

    .line 39
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewPlaceHolderSheet;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewPlaceHolder;

    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-static {v1, v2}, Lcom/miui/home/launcher/common/ViewFunctions;->setViewPaddingTop(Landroid/view/View;I)V

    .line 40
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewPlaceHolderSheet;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewPlaceHolder;

    iget v2, p1, Landroid/graphics/Rect;->right:I

    invoke-static {v1, v2}, Lcom/miui/home/launcher/common/ViewFunctions;->setViewPaddingRight(Landroid/view/View;I)V

    .line 41
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewPlaceHolderSheet;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/allapps/hideapps/HideAppsViewPlaceHolder;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-static {p0, p1}, Lcom/miui/home/launcher/common/ViewFunctions;->setViewPaddingBottom(Landroid/view/View;I)V

    :cond_0
    return-void
.end method
