.class Lcom/android/internal/policy/impl/LockPatternKeyguardView$7;
.super Ljava/lang/Object;
.source "LockPatternKeyguardView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/LockPatternKeyguardView;->showWipeDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V
    .registers 2
    .parameter

    .prologue
    .line 1380
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$7;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    const-string v1, "true"

    const-string v1, "LockPatternKeyguardView"

    .line 1382
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$7;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-static {v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$3000(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 1387
    :try_start_d
    sget-object v1, Landroid/deviceencryption/DeviceEncryptionManager;->enabled:Ljava/lang/String;

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 1388
    const-string v1, "LockPatternKeyguardView"

    const-string v2, "DEVENC: check point lock pattern"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1389
    const-string v1, "LockPatternKeyguardView"

    const-string v2, "DEVENC:Request to delete edk_p"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1390
    const-string v1, "securewipedata"

    const-string v2, "true"

    invoke-static {v1, v2}, Landroid/deviceencryption/DeviceEncryptionManager;->setFileCryptProperty(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_2c} :catch_36

    .line 1399
    :cond_2c
    :goto_2c
    :try_start_2c
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$7;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-static {v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$3100(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/os/RecoverySystem;->rebootWipeUserData(Landroid/content/Context;)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_35} :catch_40

    .line 1404
    :goto_35
    return-void

    .line 1392
    :catch_36
    move-exception v1

    move-object v0, v1

    .line 1394
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "exception in securewipedata data"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2c

    .line 1400
    .end local v0           #e:Ljava/lang/Exception;
    :catch_40
    move-exception v1

    move-object v0, v1

    .line 1402
    .restart local v0       #e:Ljava/lang/Exception;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "exception in wiping data"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_35
.end method
