.class public final synthetic Lcom/miui/home/launcher/NotificationHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/reactivex2/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/miui/home/launcher/NotificationHelper;

.field public final synthetic f$1:Lcom/miui/home/launcher/Launcher;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/NotificationHelper;Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/NotificationHelper$$ExternalSyntheticLambda0;->f$0:Lcom/miui/home/launcher/NotificationHelper;

    iput-object p2, p0, Lcom/miui/home/launcher/NotificationHelper$$ExternalSyntheticLambda0;->f$1:Lcom/miui/home/launcher/Launcher;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/NotificationHelper$$ExternalSyntheticLambda0;->f$0:Lcom/miui/home/launcher/NotificationHelper;

    iget-object p0, p0, Lcom/miui/home/launcher/NotificationHelper$$ExternalSyntheticLambda0;->f$1:Lcom/miui/home/launcher/Launcher;

    check-cast p1, Lcom/miui/home/launcher/AppInfo;

    invoke-static {v0, p0, p1}, Lcom/miui/home/launcher/NotificationHelper;->$r8$lambda$ZdTQd9vaaI12eoSsRHICdstmXDw(Lcom/miui/home/launcher/NotificationHelper;Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/AppInfo;)V

    return-void
.end method
