.class public final synthetic Lcom/miui/home/launcher/NotificationHelper$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/reactivex2/functions/Predicate;


# instance fields
.field public final synthetic f$0:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/NotificationHelper$$ExternalSyntheticLambda3;->f$0:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/miui/home/launcher/NotificationHelper$$ExternalSyntheticLambda3;->f$0:Ljava/util/Set;

    check-cast p1, Lcom/miui/home/launcher/AppInfo;

    invoke-static {p0, p1}, Lcom/miui/home/launcher/NotificationHelper;->$r8$lambda$TVRaKIEajclXc3r4stfMGlg6148(Ljava/util/Set;Lcom/miui/home/launcher/AppInfo;)Z

    move-result p0

    return p0
.end method
