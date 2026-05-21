.class final Lcom/miui/home/safemode/SafeModeManager$mSafeExitInfoList$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SafeModeManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/safemode/SafeModeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/util/ArrayList<",
        "Landroid/app/ApplicationExitInfo;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/miui/home/safemode/SafeModeManager$mSafeExitInfoList$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/home/safemode/SafeModeManager$mSafeExitInfoList$2;

    invoke-direct {v0}, Lcom/miui/home/safemode/SafeModeManager$mSafeExitInfoList$2;-><init>()V

    sput-object v0, Lcom/miui/home/safemode/SafeModeManager$mSafeExitInfoList$2;->INSTANCE:Lcom/miui/home/safemode/SafeModeManager$mSafeExitInfoList$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 33
    invoke-virtual {p0}, Lcom/miui/home/safemode/SafeModeManager$mSafeExitInfoList$2;->invoke()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public final invoke()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/app/ApplicationExitInfo;",
            ">;"
        }
    .end annotation

    .line 34
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method
