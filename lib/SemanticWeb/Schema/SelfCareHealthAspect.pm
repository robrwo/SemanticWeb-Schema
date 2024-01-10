use utf8;

package SemanticWeb::Schema::SelfCareHealthAspect;

# ABSTRACT: Self care actions or measures that can be taken to sooth

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'SelfCareHealthAspect';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Self care actions or measures that can be taken to sooth, health or avoid a
topic. This may be carried at home and can be carried/managed by the person
itself.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
