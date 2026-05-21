.class public final synthetic Lcom/miui/home/recents/BaseRecentsImpl$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/miui/home/recents/BaseRecentsImpl;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/BaseRecentsImpl;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/BaseRecentsImpl$$ExternalSyntheticLambda12;->f$0:Lcom/miui/home/recents/BaseRecentsImpl;

    iput-object p2, p0, Lcom/miui/home/recents/BaseRecentsImpl$$ExternalSyntheticLambda12;->f$1:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/miui/home/recents/BaseRecentsImpl$$ExternalSyntheticLambda12;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/recents/BaseRecentsImpl$$ExternalSyntheticLambda12;->f$0:Lcom/miui/home/recents/BaseRecentsImpl;

    iget-object v1, p0, Lcom/miui/home/recents/BaseRecentsImpl$$ExternalSyntheticLambda12;->f$1:Ljava/lang/String;

    iget-boolean p0, p0, Lcom/miui/home/recents/BaseRecentsImpl$$ExternalSyntheticLambda12;->f$2:Z

    invoke-static {v0, v1, p0}, Lcom/miui/home/recents/BaseRecentsImpl;->$r8$lambda$VnZHubqPOOMkCJp4w8364czfwLg(Lcom/miui/home/recents/BaseRecentsImpl;Ljava/lang/String;Z)V

    return-void
.end method
