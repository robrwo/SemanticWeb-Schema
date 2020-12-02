use utf8;

package SemanticWeb::Schema::EmailMessage;

# ABSTRACT: An email message.

use Moo;

extends qw/ SemanticWeb::Schema::Message /;


use MooX::JSON_LD 'EmailMessage';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v11.0.1';

=encoding utf8

=head1 DESCRIPTION

An email message.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::Message>

=cut

1;
