use utf8;

package SemanticWeb::Schema::Pathology;

# ABSTRACT: A specific branch of medical science that is concerned with the study of the cause

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'Pathology';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A specific branch of medical science that is concerned with the study of
the cause, origin and nature of a disease state, including its consequences
as a result of manifestation of the disease. In clinical care, the term is
used to designate a branch of medicine using laboratory tests to diagnose
and determine the prognostic significance of illness.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
