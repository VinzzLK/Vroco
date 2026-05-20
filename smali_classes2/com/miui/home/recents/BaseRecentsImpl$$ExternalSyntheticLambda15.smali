.class public final synthetic Lcom/miui/home/recents/BaseRecentsImpl$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/miui/home/recents/BaseRecentsImpl;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/BaseRecentsImpl;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl$$ExternalSyntheticLambda15;->f$0:Lcom/miui/home/recents/BaseRecentsImpl;

    iput-boolean p2, p0, Lcom/miui/home/recents/BaseRecentsImpl$$ExternalSyntheticLambda15;->f$1:Z

    iput-object p3, p0, Lcom/miui/home/recents/BaseRecentsImpl$$ExternalSyntheticLambda15;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl$$ExternalSyntheticLambda15;->f$0:Lcom/miui/home/recents/BaseRecentsImpl;

    iget-boolean v1, p0, Lcom/miui/home/recents/BaseRecentsImpl$$ExternalSyntheticLambda15;->f$1:Z

    iget-object p0, p0, Lcom/miui/home/recents/BaseRecentsImpl$$ExternalSyntheticLambda15;->f$2:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/miui/home/recents/BaseRecentsImpl;->$r8$lambda$6RXRqYauc0InHw-WtFhcvtbiML4(Lcom/miui/home/recents/BaseRecentsImpl;ZLjava/lang/String;)V

    return-void
.end method
