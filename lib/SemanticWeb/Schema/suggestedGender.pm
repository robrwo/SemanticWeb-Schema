use utf8;

package SemanticWeb::Schema::suggestedGender;

# ABSTRACT: The suggested gender of the intended person or audience

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'suggestedGender';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The suggested gender of the intended person or audience, for example
"male", "female", or "unisex".




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
