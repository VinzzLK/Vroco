.class public final synthetic Lcom/miui/home/recents/OverviewCommandHelper$RecentsActivityCommand$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiPredicate;


# instance fields
.field public final synthetic f$0:Lcom/miui/home/recents/OverviewCommandHelper$RecentsActivityCommand;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/OverviewCommandHelper$RecentsActivityCommand;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/OverviewCommandHelper$RecentsActivityCommand$$ExternalSyntheticLambda2;->f$0:Lcom/miui/home/recents/OverviewCommandHelper$RecentsActivityCommand;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/miui/home/recents/OverviewCommandHelper$RecentsActivityCommand$$ExternalSyntheticLambda2;->f$0:Lcom/miui/home/recents/OverviewCommandHelper$RecentsActivityCommand;

    check-cast p1, Lcom/miui/home/launcher/BaseActivity;

    check-cast p2, Ljava/lang/Boolean;

    invoke-static {p0, p1, p2}, Lcom/miui/home/recents/OverviewCommandHelper$RecentsActivityCommand;->$r8$lambda$BRpSIUcTkikNSUyqFvrzJv13JmM(Lcom/miui/home/recents/OverviewCommandHelper$RecentsActivityCommand;Lcom/miui/home/launcher/BaseActivity;Ljava/lang/Boolean;)Z

    move-result p0

    return p0
.end method
