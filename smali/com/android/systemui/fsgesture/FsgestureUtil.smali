.class public final Lcom/android/systemui/fsgesture/FsgestureUtil;
.super Ljava/lang/Object;
.source "FsgestureUtil.kt"


# static fields
.field public static final INSTANCE:Lcom/android/systemui/fsgesture/FsgestureUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/fsgesture/FsgestureUtil;

    invoke-direct {v0}, Lcom/android/systemui/fsgesture/FsgestureUtil;-><init>()V

    sput-object v0, Lcom/android/systemui/fsgesture/FsgestureUtil;->INSTANCE:Lcom/android/systemui/fsgesture/FsgestureUtil;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final hideSystemBars(Landroid/view/View;)V
    .locals 0

    const-string p0, "decorView"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p0, 0x2f06

    .line 7
    invoke-virtual {p1, p0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method public final wholeHideSystemBars(Landroid/view/View;)V
    .locals 0

    const-string p0, "decorView"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p0, 0x3f06

    .line 16
    invoke-virtual {p1, p0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method
