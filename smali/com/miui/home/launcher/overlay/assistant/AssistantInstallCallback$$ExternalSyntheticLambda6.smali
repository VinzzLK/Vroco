.class public final synthetic Lcom/miui/home/launcher/overlay/assistant/AssistantInstallCallback$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/json/JSONArray;


# direct methods
.method public synthetic constructor <init>(Lorg/json/JSONArray;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantInstallCallback$$ExternalSyntheticLambda6;->f$0:Lorg/json/JSONArray;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/miui/home/launcher/overlay/assistant/AssistantInstallCallback$$ExternalSyntheticLambda6;->f$0:Lorg/json/JSONArray;

    check-cast p1, Lorg/json/JSONObject;

    invoke-static {p0, p1}, Lcom/miui/home/launcher/overlay/assistant/AssistantInstallCallback;->$r8$lambda$jkQ0ve8f62GttRhGQJdsdYwXheI(Lorg/json/JSONArray;Lorg/json/JSONObject;)V

    return-void
.end method
