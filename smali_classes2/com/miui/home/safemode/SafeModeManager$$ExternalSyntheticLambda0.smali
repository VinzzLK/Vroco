.class public final synthetic Lcom/miui/home/safemode/SafeModeManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# static fields
.field public static final synthetic INSTANCE:Lcom/miui/home/safemode/SafeModeManager$$ExternalSyntheticLambda0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/home/safemode/SafeModeManager$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/miui/home/safemode/SafeModeManager$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/miui/home/safemode/SafeModeManager$$ExternalSyntheticLambda0;->INSTANCE:Lcom/miui/home/safemode/SafeModeManager$$ExternalSyntheticLambda0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final queueIdle()Z
    .locals 0

    invoke-static {}, Lcom/miui/home/safemode/SafeModeManager;->$r8$lambda$ccfe_Qv3q94DQdDamtSdqFElNj4()Z

    move-result p0

    return p0
.end method
