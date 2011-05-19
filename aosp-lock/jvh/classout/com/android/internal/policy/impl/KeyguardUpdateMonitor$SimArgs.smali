.class Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimArgs;
.super Ljava/lang/Object;
.source "KeyguardUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SimArgs"
.end annotation


# instance fields
.field public final simState:Lcom/android/internal/telephony/IccCard$State;


# direct methods
.method private constructor <init>(Landroid/content/Intent;)V
    .registers 6
    .parameter "intent"

    .prologue
    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    .line 184
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "only handles intent ACTION_SIM_STATE_CHANGED"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 186
    :cond_17
    const-string v2, "ss"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 187
    .local v1, stateExtra:Ljava/lang/String;
    const-string v2, "ABSENT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 188
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    iput-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimArgs;->simState:Lcom/android/internal/telephony/IccCard$State;

    .line 208
    :goto_29
    return-void

    .line 189
    :cond_2a
    const-string v2, "READY"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 190
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    iput-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimArgs;->simState:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_29

    .line 191
    :cond_37
    const-string v2, "LOCKED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_64

    .line 192
    const-string v2, "reason"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 194
    .local v0, lockedReason:Ljava/lang/String;
    const-string v2, "PIN"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_52

    .line 195
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    iput-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimArgs;->simState:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_29

    .line 196
    :cond_52
    const-string v2, "PUK"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 197
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    iput-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimArgs;->simState:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_29

    .line 199
    :cond_5f
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    iput-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimArgs;->simState:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_29

    .line 201
    .end local v0           #lockedReason:Ljava/lang/String;
    :cond_64
    const-string v2, "NETWORK"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_71

    .line 202
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    iput-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimArgs;->simState:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_29

    .line 203
    :cond_71
    const-string v2, "BLOCKED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7e

    .line 204
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->PIN_PERM_BLOCKED:Lcom/android/internal/telephony/IccCard$State;

    iput-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimArgs;->simState:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_29

    .line 206
    :cond_7e
    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->UNKNOWN:Lcom/android/internal/telephony/IccCard$State;

    iput-object v2, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimArgs;->simState:Lcom/android/internal/telephony/IccCard$State;

    goto :goto_29
.end method

.method synthetic constructor <init>(Landroid/content/Intent;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 178
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimArgs;-><init>(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimArgs;->simState:Lcom/android/internal/telephony/IccCard$State;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard$State;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
