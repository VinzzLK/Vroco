.class public final synthetic Lcom/miui/home/launcher/NotificationHelper$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/reactivex2/functions/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/miui/home/launcher/NotificationHelper$$ExternalSyntheticLambda4;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/home/launcher/NotificationHelper$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/miui/home/launcher/NotificationHelper$$ExternalSyntheticLambda4;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/NotificationHelper$$ExternalSyntheticLambda4;->INSTANCE:Lcom/miui/home/launcher/NotificationHelper$$ExternalSyntheticLambda4;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-static {p1}, Lcom/miui/home/launcher/NotificationHelper;->$r8$lambda$vkFylk6NmVYd1RMLoSdiwsgtCP0(Lcom/miui/home/launcher/ShortcutInfo;)Z

    move-result p0

    return p0
.end method
