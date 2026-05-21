.class public final synthetic Lcom/miui/home/safemode/SafeLauncher$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# instance fields
.field public final synthetic f$0:Lcom/miui/home/safemode/SafeLauncher;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/safemode/SafeLauncher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/safemode/SafeLauncher$$ExternalSyntheticLambda0;->f$0:Lcom/miui/home/safemode/SafeLauncher;

    return-void
.end method


# virtual methods
.method public final queueIdle()Z
    .locals 0

    iget-object p0, p0, Lcom/miui/home/safemode/SafeLauncher$$ExternalSyntheticLambda0;->f$0:Lcom/miui/home/safemode/SafeLauncher;

    invoke-static {p0}, Lcom/miui/home/safemode/SafeLauncher;->$r8$lambda$rv4_co5ROTeZQwNT3O7AqMsy_5s(Lcom/miui/home/safemode/SafeLauncher;)Z

    move-result p0

    return p0
.end method
