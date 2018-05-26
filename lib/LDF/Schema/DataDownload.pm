package LDF::Schema::DataDownload;

# ABSTRACT: A dataset in downloadable form.

use Moo;

extends qw/ LDF::Schema::MediaObject /;


use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v0.0.1';

=head1 DESCRIPTION

A dataset in downloadable form.



Note that this class was generated automatically from the following sources:

=over

=item L<http://schema.org/version/3.3/schema.rdf>

=back


=cut


=head1 METHODS

=head2 C<json_ld_type>

Defines the type for L<MooX::Role::JSON_LD>

=cut

sub json_ld_type { 'DataDownload' }



=head1 SEE ALSO



L<LDF::Schema::MediaObject>

=cut

1;
