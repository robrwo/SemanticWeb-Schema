use utf8;

package SemanticWeb::Schema::associatedDisease;

# ABSTRACT: Disease associated to this BioChemEntity

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'associatedDisease';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Disease associated to this BioChemEntity. Such disease can be a
MedicalCondition or a URL. If you want to add an evidence supporting the
association, please use PropertyValue.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
