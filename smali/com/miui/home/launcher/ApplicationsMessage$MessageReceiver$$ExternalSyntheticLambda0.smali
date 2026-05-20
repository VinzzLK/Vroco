.class public final synthetic Lcom/miui/home/launcher/ApplicationsMessage$MessageReceiver$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/miui/home/launcher/ApplicationsMessage$MessageReceiver;

.field public final synthetic f$1:Landroid/content/ComponentName;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/ApplicationsMessage$MessageReceiver;Landroid/content/ComponentName;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/ApplicationsMessage$MessageReceiver$$ExternalSyntheticLambda0;->f$0:Lcom/miui/home/launcher/ApplicationsMessage$MessageReceiver;

    iput-object p2, p0, Lcom/miui/home/launcher/ApplicationsMessage$MessageReceiver$$ExternalSyntheticLambda0;->f$1:Landroid/content/ComponentName;

    iput p3, p0, Lcom/miui/home/launcher/ApplicationsMessage$MessageReceiver$$ExternalSyntheticLambda0;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/ApplicationsMessage$MessageReceiver$$ExternalSyntheticLambda0;->f$0:Lcom/miui/home/launcher/ApplicationsMessage$MessageReceiver;

    iget-object v1, p0, Lcom/miui/home/launcher/ApplicationsMessage$MessageReceiver$$ExternalSyntheticLambda0;->f$1:Landroid/content/ComponentName;

    iget p0, p0, Lcom/miui/home/launcher/ApplicationsMessage$MessageReceiver$$ExternalSyntheticLambda0;->f$2:I

    invoke-static {v0, v1, p0}, Lcom/miui/home/launcher/ApplicationsMessage$MessageReceiver;->$r8$lambda$bnPWbmWAKyITcBuvF3ElP_ALLL0(Lcom/miui/home/launcher/ApplicationsMessage$MessageReceiver;Landroid/content/ComponentName;I)V

    return-void
.end method
