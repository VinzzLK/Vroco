.class public final synthetic Lcom/miui/home/launcher/NotificationHelper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/reactivex2/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/miui/home/launcher/NotificationHelper;

.field public final synthetic f$1:Lcom/miui/home/launcher/notification/PackageUserKey;

.field public final synthetic f$2:Ljava/util/Set;

.field public final synthetic f$3:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/NotificationHelper;Lcom/miui/home/launcher/notification/PackageUserKey;Ljava/util/Set;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/NotificationHelper$$ExternalSyntheticLambda1;->f$0:Lcom/miui/home/launcher/NotificationHelper;

    iput-object p2, p0, Lcom/miui/home/launcher/NotificationHelper$$ExternalSyntheticLambda1;->f$1:Lcom/miui/home/launcher/notification/PackageUserKey;

    iput-object p3, p0, Lcom/miui/home/launcher/NotificationHelper$$ExternalSyntheticLambda1;->f$2:Ljava/util/Set;

    iput-object p4, p0, Lcom/miui/home/launcher/NotificationHelper$$ExternalSyntheticLambda1;->f$3:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/home/launcher/NotificationHelper$$ExternalSyntheticLambda1;->f$0:Lcom/miui/home/launcher/NotificationHelper;

    iget-object v1, p0, Lcom/miui/home/launcher/NotificationHelper$$ExternalSyntheticLambda1;->f$1:Lcom/miui/home/launcher/notification/PackageUserKey;

    iget-object v2, p0, Lcom/miui/home/launcher/NotificationHelper$$ExternalSyntheticLambda1;->f$2:Ljava/util/Set;

    iget-object p0, p0, Lcom/miui/home/launcher/NotificationHelper$$ExternalSyntheticLambda1;->f$3:Ljava/util/Map;

    check-cast p1, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/miui/home/launcher/NotificationHelper;->$r8$lambda$bTiEH5KT8H0SYRFc5y5VgVxUQJE(Lcom/miui/home/launcher/NotificationHelper;Lcom/miui/home/launcher/notification/PackageUserKey;Ljava/util/Set;Ljava/util/Map;Lcom/miui/home/launcher/ShortcutInfo;)V

    return-void
.end method
