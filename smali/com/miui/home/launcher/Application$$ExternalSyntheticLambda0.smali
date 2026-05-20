.class public final synthetic Lcom/miui/home/launcher/Application$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/app/KeyguardManager$KeyguardLockedStateListener;


# static fields
.field public static final synthetic INSTANCE:Lcom/miui/home/launcher/Application$$ExternalSyntheticLambda0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/home/launcher/Application$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/miui/home/launcher/Application$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/Application$$ExternalSyntheticLambda0;->INSTANCE:Lcom/miui/home/launcher/Application$$ExternalSyntheticLambda0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKeyguardLockedStateChanged(Z)V
    .locals 0

    invoke-static {p1}, Lcom/miui/home/launcher/Application;->$r8$lambda$sIAEgqWbwN2lSddmLWrPEIIawrY(Z)V

    return-void
.end method
