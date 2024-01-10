use utf8;

package SemanticWeb::Schema::FailedActionStatus;

# ABSTRACT: An action that failed to complete

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'FailedActionStatus';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

An action that failed to complete. The action's error property and the HTTP
return code contain more information about the failure.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
