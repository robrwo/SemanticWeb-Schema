use utf8;

package SemanticWeb::Schema::toRecipient;

# ABSTRACT: A sub property of recipient

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'toRecipient';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A sub property of recipient. The recipient who was directly sent the
message.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
