.class public final synthetic Lcom/miui/home/launcher/DbCellCountHelper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/miui/home/launcher/DbCellCountHelper$$ExternalSyntheticLambda1;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/home/launcher/DbCellCountHelper$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/miui/home/launcher/DbCellCountHelper$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/DbCellCountHelper$$ExternalSyntheticLambda1;->INSTANCE:Lcom/miui/home/launcher/DbCellCountHelper$$ExternalSyntheticLambda1;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/miui/home/launcher/layout/LayoutScreenInfo;

    invoke-static {p1}, Lcom/miui/home/launcher/DbCellCountHelper;->$r8$lambda$0x2Dz3L8NMr_yDnK3nGSfKRdjvg(Lcom/miui/home/launcher/layout/LayoutScreenInfo;)I

    move-result p0

    return p0
.end method
