use utf8;

package SemanticWeb::Schema::isPartOfBioChemEntity;

# ABSTRACT: Indicates a BioChemEntity that is (in some sense) a part of this BioChemEntity

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'isPartOfBioChemEntity';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Indicates a BioChemEntity that is (in some sense) a part of this
BioChemEntity. 




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
