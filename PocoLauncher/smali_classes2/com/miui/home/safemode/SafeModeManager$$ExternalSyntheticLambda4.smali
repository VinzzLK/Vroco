.class public final synthetic Lcom/miui/home/safemode/SafeModeManager$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/miui/home/safemode/SafeModeManager$$ExternalSyntheticLambda4;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/home/safemode/SafeModeManager$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/miui/home/safemode/SafeModeManager$$ExternalSyntheticLambda4;-><init>()V

    sput-object v0, Lcom/miui/home/safemode/SafeModeManager$$ExternalSyntheticLambda4;->INSTANCE:Lcom/miui/home/safemode/SafeModeManager$$ExternalSyntheticLambda4;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Landroid/app/ApplicationExitInfo;

    check-cast p2, Landroid/app/ApplicationExitInfo;

    invoke-static {p1, p2}, Lcom/miui/home/safemode/SafeModeManager;->$r8$lambda$_A52dIgkQpANw5lyf0RaElwIL8M(Landroid/app/ApplicationExitInfo;Landroid/app/ApplicationExitInfo;)I

    move-result p0

    return p0
.end method
