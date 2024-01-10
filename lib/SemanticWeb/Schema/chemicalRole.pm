use utf8;

package SemanticWeb::Schema::chemicalRole;

# ABSTRACT: A role played by the BioChemEntity within a chemical context.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'chemicalRole';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A role played by the BioChemEntity within a chemical context.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
