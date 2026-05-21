.class public final Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper$mCellScreenObserver$1;
.super Ljava/lang/Object;
.source "NoWordSwitchAnimHelper.kt"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method public static synthetic $r8$lambda$SuyCYTj1TlzRSK373tlpP29UEEA(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper$mCellScreenObserver$1;->onChildViewAdded$lambda-0(Landroid/view/View;)V

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final onChildViewAdded$lambda-0(Landroid/view/View;)V
    .locals 2

    const-string v0, "$child"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    sget-object v0, Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper;->INSTANCE:Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper;->access$doSwitchAnim(Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper;Landroid/view/View;Z)V

    return-void
.end method


# virtual methods
.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    const-string p0, "parent"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "child"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    invoke-static {}, Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper;->access$getMScheduledWorkspaceDisappearAnim$p()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    .line 88
    invoke-virtual {p2, p0}, Landroid/view/View;->setAlpha(F)V

    .line 90
    new-instance p0, Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper$mCellScreenObserver$1$$ExternalSyntheticLambda0;

    invoke-direct {p0, p2}, Lcom/miui/home/launcher/anim/NoWordSwitchAnimHelper$mCellScreenObserver$1$$ExternalSyntheticLambda0;-><init>(Landroid/view/View;)V

    const-wide/16 v0, 0x64

    invoke-virtual {p2, p0, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    const-string p0, "NoWordSwitchAnimHelper"

    const-string p1, "perform childView add anim"

    .line 91
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    const-string p0, "parent"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "child"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
