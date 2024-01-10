use utf8;

package SemanticWeb::Schema::DangerousGoodConsideration;

# ABSTRACT: The item is dangerous and requires careful handling and/or special training of the user

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'DangerousGoodConsideration';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The item is dangerous and requires careful handling and/or special training
of the user. See also the [UN Model
Classification](https://unece.org/DAM/trans/danger/publi/unrec/rev17/Englis
h/02EREv17_Part2.pdf) defining the 9 classes of dangerous goods such as
explosives, gases, flammables, and more.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
