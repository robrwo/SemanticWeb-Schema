use utf8;

package SemanticWeb::Schema::Homeopathic;

# ABSTRACT: A system of medicine based on the principle that a disease can be cured by a substance that produces similar symptoms in healthy people.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'Homeopathic';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A system of medicine based on the principle that a disease can be cured by
a substance that produces similar symptoms in healthy people.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
