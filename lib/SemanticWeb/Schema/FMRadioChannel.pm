use utf8;

package SemanticWeb::Schema::FMRadioChannel;

# ABSTRACT: A radio channel that uses FM.

use Moo;

extends qw/ SemanticWeb::Schema::RadioChannel /;


use MooX::JSON_LD 'FMRadioChannel';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v5.0.1';

=encoding utf8

=head1 DESCRIPTION

A radio channel that uses FM.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema::RadioChannel>

=cut

1;
